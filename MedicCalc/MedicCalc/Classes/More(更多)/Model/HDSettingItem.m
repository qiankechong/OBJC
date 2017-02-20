//
//  HDSettingItem.m
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import "HDSettingItem.h"

@implementation HDSettingItem
+(instancetype)itemWithTitle:(NSString *)title{
    HDSettingItem *item = [[ self alloc]init];
    item.title = title;
    return item;
}
+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon{
    
    HDSettingItem *item = [self itemWithTitle:title];
    item.icon = icon;
    return item;
}

+(instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle{
    HDSettingItem *item = [self itemWithTitle:title];
    item.subTitle = subTitle;
    return  item;
}

@end
