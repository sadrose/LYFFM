//
//  BaseAPI.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseRequest.h"

typedef void(^BaseAPICompletion)(id response, NSString *message, BOOL success);

@interface BaseAPI : NSObject

+ (NSMutableDictionary *)params;

@end
