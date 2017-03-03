//
//  MainFeatureAPI.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseAPI.h"

@interface MainFeatureAPI : BaseAPI

/**
 *  请求轮播数据
 **/
+ (void)requestFocus:(BaseAPICompletion)completion;

/**
 *  请求剩余数据
 **/
+ (void)requestRest:(BaseAPICompletion)completion;

@end
