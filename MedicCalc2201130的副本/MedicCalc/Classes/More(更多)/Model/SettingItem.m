//
//  HDSettingItem.m
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import "SettingItem.h"

@implementation SettingItem
+(instancetype)itemWithTitle:(NSString *)title{
    SettingItem *item = [[ self alloc]init];
    item.title = title;
    return item;
}

@end
