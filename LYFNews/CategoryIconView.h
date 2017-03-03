//
//  CategoryIconView.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface CategoryIconView : UIView

+ (instancetype)categoryIconView;

@property (nonatomic, strong) NSString *category;

@property (nonatomic, strong) NSString *categoryImageURL;

@end
