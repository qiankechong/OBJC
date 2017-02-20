//
//  HDSettingItemArrow.m
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import "HDSettingItemArrow.h"

@implementation HDSettingItemArrow

+(instancetype)itemWithTitle:(NSString *)title destController:(Class)destController{
    
    HDSettingItemArrow *item = [self itemWithTitle:title icon:nil destController:destController];
    
    return item;
}

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon option:(void (^)())option{
    HDSettingItemArrow *item = [self itemWithTitle:title icon:icon];
    
    item.option = option;
    
    return item;
}

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon destController:(Class)destController{
    
    HDSettingItemArrow *item  = [self itemWithTitle:title icon:icon];
    
    item.destController = destController;
    
    return item;
}


@end
