//
//  SubTitleView.h
//  FenghuangFM
//
//  Created by tom555cat on 2016/11/13.
//  Copyright © 2016年 Hello World Corporation. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SubTitleView;

@protocol SubTitleViewDelegate <NSObject>

- (void)subTitleViewDidSelected:(SubTitleView *)titleView atIndex:(NSInteger)index title:(NSString *)title;

@end


@interface SubTitleView : UIView

@property (nonatomic, weak) id <SubTitleViewDelegate> delegate;

/**
 *  标题数据源
 **/
@property (nonatomic, strong) NSMutableArray *titleArray;

/**
 *  切换到子视图中
 **/
- (void)transToShowAtIndex:(NSInteger)index;

@end
