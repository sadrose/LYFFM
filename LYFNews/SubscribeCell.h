//
//  SubscribeCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubscribeModel.h"

@interface SubscribeCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *albumImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;

@property (weak, nonatomic) IBOutlet UIButton *subscribBtn;

+ (instancetype)subsribeCell:(UITableView *)tableView;

@end
