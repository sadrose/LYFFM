//
//  BokeAPI.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "BaseAPI.h"

@interface BokeAPI : BaseAPI

+ (void)requestRecommendWithPage:(NSInteger)page completion:(BaseAPICompletion)completion;

+ (void)requestHotWithPage:(NSInteger)page completion:(BaseAPICompletion)completion;

+ (void)requestNewWithPage:(NSInteger)page completion:(BaseAPICompletion)completion;

@end
