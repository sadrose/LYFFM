//
//  LeaderBoardViewModel.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "LeaderBoardModel.h"

@interface LeaderBoardViewModel : NSObject

@property (nonatomic, readonly) RACSignal *updateContentSignal;

@property (nonatomic, strong) LeaderBoardModel *model;

- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
- (CGFloat)heightForRowAtIndex:(NSIndexPath *)indexPath;

@end
