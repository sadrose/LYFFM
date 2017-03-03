//
//  HotRecNewSubTitle.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//
#import <UIKit/UIKit.h>

@class HotRecNewSubTitle;

@protocol HotRecNewSubTitleDelegate <NSObject>

- (void)hotRecNewDidSelected:(HotRecNewSubTitle *)titleView atIndex:(NSInteger)index title:(NSString *)title;

@end

@interface HotRecNewSubTitle : UIView

@property (nonatomic, weak) id <HotRecNewSubTitleDelegate> delegate;

@end
