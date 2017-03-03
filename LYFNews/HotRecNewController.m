//
//  HotRecNewController.m
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "HotRecNewController.h"
#import "HotRecNewSubTitle.h"
#import "Masonry.h"
#import "SubscribeCell.h"
#import "UIImageView+YYWebImage.h"
#import "ProgramController.h"

#define kHotTableView       10
#define kRecTableView       20
#define kNewsTableView      30
#define kHotTitle           @"热播"
#define kRecTitle           @"推荐"
#define kNewTitle           @"最新"

@interface HotRecNewController () <UITableViewDelegate, UITableViewDataSource, HotRecNewSubTitleDelegate>

@property (nonatomic, strong) HotRecNewViewModel *viewModel;

@property (nonatomic, strong) HotRecNewSubTitle *subTitleView;

@property (nonatomic, assign) MoreType type;

@property (nonatomic, strong) UITableView *hotTableView;

@property (nonatomic, strong) UITableView *recTableView;

@property (nonatomic, strong) UITableView *newsTableView;

@property (nonatomic, assign) BOOL isFirstLoadHot;      // 判断热播是否初次加载的开关

@property (nonatomic, assign) BOOL isFirstLoadNew;      // 判断最新是否初次加载的开关

@end

@implementation HotRecNewController

- (instancetype)initWithIdentifier:(MoreType)type
{
    self = [super init];
    if (self) {
        self.type = type;
        
        switch (type) {
            case BokeJingxuanMore:
                self.title = @"播客精选";
                break;
            case FenghuangDujiaMore:
                self.title = @"独家新闻";
                break;
            default:
                break;
        }
        
        // 热播和最新最开始都没加载
        _isFirstLoadHot = YES;
        _isFirstLoadNew = YES;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.subTitleView];
    
    @weakify(self);
    [self.viewModel.updateRecommendSignal subscribeNext:^(id x) {
        @strongify(self);
        [self.recTableView reloadData];
    }];
}

#pragma mark - HotRecNewSubTitleDelegate

- (void)hotRecNewDidSelected:(HotRecNewSubTitle *)titleView atIndex:(NSInteger)index title:(NSString *)title
{
    if ([title isEqualToString:kHotTitle]) {
        [self.view bringSubviewToFront:self.hotTableView];
        
        if (self.isFirstLoadHot) {
            @weakify(self);
            [self.viewModel.updateHotSignal subscribeNext:^(id x) {
                @strongify(self);
                [self.hotTableView reloadData];
                self.isFirstLoadHot = NO;
            }];
        }
        
    } else if ([title isEqualToString:kRecTitle]) {
        [self.view bringSubviewToFront:self.recTableView];
        
    } else if ([title isEqualToString:kNewTitle]) {
        [self.view bringSubviewToFront:self.newsTableView];
        
        if (self.isFirstLoadNew) {
            @weakify(self);
            [self.viewModel.updateNewSignal subscribeNext:^(id x) {
                @strongify(self);
                [self.newsTableView reloadData];
                self.isFirstLoadNew = NO;
            }];
        }
    }
}

#pragma mark - UITableViewDelegate & UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView.tag == kHotTableView) {
        return self.viewModel.hotList.count;
    } else if (tableView.tag == kRecTableView) {
        return self.viewModel.reList.count;
    } else {
        return self.viewModel.newsList.count;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView.tag == kHotTableView) {
        SubscribeCell *cell = [SubscribeCell subsribeCell:tableView];
        HotSubscribeDetailModel *model = self.viewModel.hotList[indexPath.item];
        [cell.albumImageView yy_setImageWithURL:[NSURL URLWithString:model.img100_100] options:YYWebImageOptionSetImageWithFadeAnimation];
        cell.titleLabel.text = model.resourceTitle;
        cell.subTitleLabel.text = [NSString stringWithFormat:@"订阅%@", model.subscribesNumShow];
        return cell;
    } else if (tableView.tag == kRecTableView) {
        SubscribeCell *cell = [SubscribeCell subsribeCell:tableView];
        RecommendSubscribeDetailModel *model = self.viewModel.reList[indexPath.item];
        [cell.albumImageView yy_setImageWithURL:[NSURL URLWithString:model.img100_100] options:YYWebImageOptionSetImageWithFadeAnimation];
        cell.titleLabel.text = model.resourceTitle;
        cell.subTitleLabel.text = [NSString stringWithFormat:@"订阅%@", model.subscribesNumShow];
        return cell;
    } else {
        SubscribeCell *cell = [SubscribeCell subsribeCell:tableView];
        NewsSubscribeDetailModel *model = self.viewModel.newsList[indexPath.item];
        [cell.albumImageView yy_setImageWithURL:[NSURL URLWithString:model.img100_100] options:YYWebImageOptionSetImageWithFadeAnimation];
        cell.titleLabel.text = model.resourceTitle;
        cell.subTitleLabel.text = [NSString stringWithFormat:@"订阅%@", model.subscribesNumShow];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView.tag == kHotTableView) {
        HotSubscribeDetailModel *model = self.viewModel.hotList[indexPath.item];
        ProgramController *controller = [[ProgramController alloc] initWithPid:model.id];
        [self.navigationController pushViewController:controller animated:YES];
    } else if (tableView.tag == kRecTableView) {
        RecommendSubscribeDetailModel *model = self.viewModel.reList[indexPath.item];
        ProgramController *controller = [[ProgramController alloc] initWithPid:model.id];
        [self.navigationController pushViewController:controller animated:YES];
    } else {
        NewsSubscribeDetailModel *model = self.viewModel.newsList[indexPath.item];
        ProgramController *controller = [[ProgramController alloc] initWithPid:model.id];
        [self.navigationController pushViewController:controller animated:YES];
    }
}

#pragma mark - Getter & Setter

- (HotRecNewViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[HotRecNewViewModel alloc] initWithIdentifier:self.type];
    }
    
    return _viewModel;
}

- (HotRecNewSubTitle *)subTitleView
{
    if (!_subTitleView) {
        _subTitleView = [[HotRecNewSubTitle alloc] initWithFrame:CGRectMake(0, 0, screenWidthPCH, 40)];
        _subTitleView.delegate = self;
    }
    return _subTitleView;
}

- (UITableView *)hotTableView
{
    if (!_hotTableView) {
        UITableView *tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, screenWidthPCH, screenHeightPCH - 64 - 40) style:UITableViewStylePlain];
        tab.tag = kHotTableView;
        tab.delegate = self;
        tab.dataSource = self;
        tab.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:tab];
        _hotTableView = tab;
    }
    return _hotTableView;
}

- (UITableView *)recTableView
{
    if (!_recTableView) {
        UITableView *tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, screenWidthPCH, screenHeightPCH - 64 - 40) style:UITableViewStylePlain];
        tab.tag = kRecTableView;
        tab.delegate = self;
        tab.dataSource = self;
        tab.separatorStyle = UITableViewCellSeparatorStyleNone;
        tab.backgroundColor = [UIColor clearColor];
        [self.view addSubview:tab];
        _recTableView = tab;
    }
    return _recTableView;
}

- (UITableView *)newsTableView
{
    if (!_newsTableView) {
        UITableView *tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, screenWidthPCH, screenHeightPCH - 64 - 40) style:UITableViewStylePlain];
        tab.tag = kNewsTableView;
        tab.delegate = self;
        tab.dataSource = self;
        tab.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:tab];
        _newsTableView = tab;
    }
    return _newsTableView;
}

@end
