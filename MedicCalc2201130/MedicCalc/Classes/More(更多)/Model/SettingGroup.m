//
//  HDSettingGroup.m
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import "SettingGroup.h"

@implementation SettingGroup

+(instancetype)groupWithItems:(NSArray *)items{
    SettingGroup *group = [[self alloc]init];
    
    group.items = items;
    
    return group;
}

@end
