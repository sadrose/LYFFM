//
//  FeatureSpecialCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "FeatureBaseCell.h"
#import "MainFeatureModel.h"

@interface FeatureSpecialCell : FeatureBaseCell

+ (instancetype)featureCell:(UITableView *)tableView;

@property (nonatomic, strong) RecommendSpecialSectionModel *model;

@end
