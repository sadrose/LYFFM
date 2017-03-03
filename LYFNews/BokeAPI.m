//
//  BokeAPI.m
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "BokeAPI.h"

#define kBokeAPI @"http://d.fm.ifeng.com/fm/read/fmd/ios/600/getProgramList.html"

@implementation BokeAPI

+ (void)requestRecommendWithPage:(NSInteger)page completion:(BaseAPICompletion)completion
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    [params setObject:@"TRWLY" forKey:@"appid"];
    [params setObject:@"329" forKey:@"cid"];
    [params setObject:@"1" forKey:@"listtype"];
    [params setObject:[NSString stringWithFormat:@"%ld", (long)page] forKey:@"pagenum"];
    [params setObject:@"08C091E5CA887E096092A0DDB0E00E25" forKey:@"sign"];
    [params setObject:@"1479615933" forKey:@"timestamp"];
    
    BaseRequest *request = [BaseRequest requestWithURL:kBokeAPI];
    [request startWithMethod:HTTPTypePOST params:params completion:^(id responseObject, NSString *message, BOOL success) {
        if (completion) {
            completion(responseObject, message, success);
        }
    }];
}

+ (void)requestHotWithPage:(NSInteger)page completion:(BaseAPICompletion)completion
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    [params setObject:@"TRWLY" forKey:@"appid"];
    [params setObject:@"329" forKey:@"cid"];
    [params setObject:@"3" forKey:@"listtype"];
    [params setObject:[NSString stringWithFormat:@"%ld", (long)page] forKey:@"pagenum"];
    [params setObject:@"08C091E5CA887E096092A0DDB0E00E25" forKey:@"sign"];
    [params setObject:@"1479615933" forKey:@"timestamp"];
    
    BaseRequest *request = [BaseRequest requestWithURL:kBokeAPI];
    [request startWithMethod:HTTPTypePOST params:params completion:^(id responseObject, NSString *message, BOOL success) {
        if (completion) {
            completion(responseObject, message, success);
        }
    }];
}

+ (void)requestNewWithPage:(NSInteger)page completion:(BaseAPICompletion)completion
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    [params setObject:@"TRWLY" forKey:@"appid"];
    [params setObject:@"329" forKey:@"cid"];
    [params setObject:@"2" forKey:@"listtype"];
    [params setObject:[NSString stringWithFormat:@"%ld", (long)page] forKey:@"pagenum"];
    [params setObject:@"08C091E5CA887E096092A0DDB0E00E25" forKey:@"sign"];
    [params setObject:@"1479615933" forKey:@"timestamp"];
    
    BaseRequest *request = [BaseRequest requestWithURL:kBokeAPI];
    [request startWithMethod:HTTPTypePOST params:params completion:^(id responseObject, NSString *message, BOOL success) {
        if (completion) {
            completion(responseObject, message, success);
        }
    }];
}

@end
