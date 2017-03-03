//
//  AlbumFeatureCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeaderBoardModel.h"

@interface AlbumFeatureCell : UITableViewCell

@property (nonatomic, strong) NSMutableArray<BdModel *> *modelArray;

+ (instancetype)albumFeatureCell:(UITableView *)tableView;

@end
