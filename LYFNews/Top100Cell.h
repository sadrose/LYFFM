//
//  Top100Cell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeaderBoardModel.h"

@interface Top100Cell : UITableViewCell

@property (nonatomic, strong) NSMutableArray<TopModel *> *modelArray;

+ (instancetype)top100Cell:(UITableView *)tableView;

@end
