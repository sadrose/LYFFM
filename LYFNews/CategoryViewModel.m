//
//  CategoryViewModel.m
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "CategoryViewModel.h"

@implementation CategoryViewModel

- (CGFloat)heightForCategoryOneView
{
    CGFloat iconW = 88;
    CGFloat iconH = 106;
    CGFloat padding = (screenWidthPCH - iconW * 4) / 2.0;
    return iconH * 4 + padding;
}

- (CGFloat)heightForCategoryTwoView
{
    CGFloat iconW = 88;
    CGFloat iconH = 106;
    CGFloat padding = (screenWidthPCH - iconW * 4) / 2.0;
    return iconH * 2 + padding;
}

@end
