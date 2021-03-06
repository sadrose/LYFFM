//
//  AuthorCell.m
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "AuthorCell.h"
#import "UIImageView+YYWebImage.h"

@interface AuthorCell ()

@property (weak, nonatomic) IBOutlet UIImageView *headImageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation AuthorCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setName:(NSString *)name
{
    _name = name;
    self.nameLabel.text = name;
}

- (void)setHeadUrl:(NSString *)headUrl
{
    _headUrl = headUrl;
    [self.headImageView yy_setImageWithURL:[NSURL URLWithString:headUrl] options:YYWebImageOptionSetImageWithFadeAnimation];
}

+ (instancetype)authorCell:(UITableView *)tableView
{
    NSString *identifier = NSStringFromClass([self class]);
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:identifier];
    return [tableView dequeueReusableCellWithIdentifier:identifier];
}

@end
