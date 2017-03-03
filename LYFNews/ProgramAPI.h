//
//  ProgramAPI.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "BaseAPI.h"

@interface ProgramAPI : BaseAPI

+ (void)requestProgramDetailWithPid:(NSString *)pid completion:(BaseAPICompletion)completion;

+ (void)requestPlayListWithPid:(NSString *)pid
                           rid:(NSString *)rid
                    completion:(BaseAPICompletion)completion;

@end
