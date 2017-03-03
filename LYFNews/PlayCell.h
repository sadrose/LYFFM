//
//  PlayCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgramModel.h"

@interface PlayCell : UITableViewCell

@property (nonatomic, strong) PlayDetailModel *model;

+ (instancetype)playCell:(UITableView *)tableView;

@end
