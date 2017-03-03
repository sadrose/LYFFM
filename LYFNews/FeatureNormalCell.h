//
//  FeatureNormalCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "FeatureBaseCell.h"
#import "MainFeatureModel.h"

@class FeatureNormalCell;

@protocol FeatureNormalCellDelegate <NSObject>

/**
 *  更多按钮点击事件
 **/
- (void)featureNormalCellDidMoreClick:(FeatureNormalCell *)cell;

@end

@interface FeatureNormalCell : FeatureBaseCell

+ (instancetype)featureCell:(UITableView *)tableView;

@property (nonatomic, weak) id <FeatureNormalCellDelegate> delegate;

@property (nonatomic, strong) RecommendSpecialSectionModel *model;

//@property (nonatomic, strong) RecommendResource *recommendResource;

@end
