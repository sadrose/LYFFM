//
//  FeatureCellFactory.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "FeatureBaseCell.h"

typedef NS_ENUM(NSInteger, FeatureCellStyle) {
    FeatureCellNormalStyle      = 0,    // 3格图片cell
    FeatureCellSpecialStyle     = 1,    // 2格图片cell
    FeatureCellManageStyle      = 2,    // 管理首页cell
};

@interface FeatureCellFactory : NSObject

/**
 *  传入要创建的样式，由工厂类生成特定样式的cell
 **/
+ (FeatureBaseCell *)createCellByFactory:(UITableView *)tableView style:(FeatureCellStyle)style;

@end
