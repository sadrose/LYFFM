//
//  LeaderBoardAPI.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//

#import "BaseAPI.h"

@interface LeaderBoardAPI : BaseAPI

+ (void)requestLeaderBoard:(BaseAPICompletion)completion;

@end
