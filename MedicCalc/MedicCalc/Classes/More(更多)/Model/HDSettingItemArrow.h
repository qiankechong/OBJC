//
//  HDSettingItemArrow.h
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import "HDSettingItem.h"

@interface HDSettingItemArrow : HDSettingItem
//记录跳转的目标控制器
@property(nonatomic,assign)Class destController;
//记录block 用来执行代码
@property(nonatomic,copy) void(^option)();

+(instancetype)itemWithTitle:(NSString *)title destController:(Class)destController;

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon destController:(Class)destController;

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon option:(void(^)())option;

@end
