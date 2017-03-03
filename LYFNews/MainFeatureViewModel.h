//
//  MainFeatureViewModel.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "MainFeatureModel.h"

@interface MainFeatureViewModel : NSObject

/**
 *  更新数据的信号
 **/
@property (nonatomic, readonly) RACSignal                   *updateContentSignal;

@property (nonatomic, strong)   MainFeatureModel            *featureModel;

@property (nonatomic, strong)   RecommendModel              *recommendModel;

- (void)refreshDataSource;

- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
- (CGFloat)heightForRowAtIndex:(NSIndexPath *)indexPath;

@end
