//
//  CategoryOneCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//
#import <UIKit/UIKit.h>

@protocol CategoryViewDelegate <NSObject>

- (void)categoryIconViewSelected:(NSString *)category;

@end

@interface CategoryOneView : UIView

@property (nonatomic, weak) id <CategoryViewDelegate> delegate;

@property (nonatomic, strong) NSMutableArray *categoryArray;

@end
