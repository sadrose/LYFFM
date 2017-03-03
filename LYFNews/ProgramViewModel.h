//
//  ProgramViewModel.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"
#import "ProgramModel.h"

@interface ProgramViewModel : NSObject

/**
 *  更新数据的信号
 **/
@property (nonatomic, strong) RACSignal *updateContentSignal;

@property (nonatomic, strong) ProgramModel *programModel;

@property (nonatomic, strong) PlayModel *playModel;

@property (nonatomic, strong) NSString *pid;

@property (nonatomic, strong) NSString *rid;

- (void)refreshDataSource;

- (NSInteger)numberOfSections;

- (NSInteger)numberOfItemsInSection:(NSInteger)section;

- (CGFloat)heightForRowAtIndex:(NSIndexPath *)indexPath;

@end
