//
//  TopAlbumCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeaderBoardModel.h"

@interface TopAlbumCell : UITableViewCell

+ (instancetype)topAlbumCell:(UITableView *)tableView;

@property (nonatomic, strong) NSMutableArray<TopSubscribeModel *> *modelArray;

@end
