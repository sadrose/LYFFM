//
//  AuthorCell.h
//  LYFNews
//
//  Created by Lyf on 17/2/28.
//  Copyright © 2017年 com.MYTM. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface AuthorCell : UITableViewCell

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *headUrl;

+ (instancetype)authorCell:(UITableView *)tableView;

@end
