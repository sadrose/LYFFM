//
//  BaseAPI.m
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//
#import "BaseAPI.h"

@implementation BaseAPI

+ (NSMutableDictionary *)params
{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:@"iPhone" forKey:@"device"];
    return dic;
}

@end
