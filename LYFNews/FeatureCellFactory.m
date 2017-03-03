//
//  FeatureCellFactory.m
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "FeatureCellFactory.h"
#import "FeatureNormalCell.h"
#import "FeatureSpecialCell.h"

@implementation FeatureCellFactory

+ (FeatureBaseCell *)createCellByFactory:(UITableView *)tableView style:(FeatureCellStyle)style
{
    FeatureBaseCell *baseCell;
    if (style == FeatureCellNormalStyle) {
        baseCell = [FeatureNormalCell featureCell:tableView];
    } else if (style == FeatureCellSpecialStyle) {
        baseCell = [FeatureSpecialCell featureCell:tableView];
    }
    
    return baseCell;
}

@end
