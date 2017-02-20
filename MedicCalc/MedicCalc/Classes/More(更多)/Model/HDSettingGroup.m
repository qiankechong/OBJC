//
//  HDSettingGroup.m
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import "HDSettingGroup.h"

@implementation HDSettingGroup

+(instancetype)groupWithItems:(NSArray *)items{
    HDSettingGroup *group = [[self alloc]init];
    
    group.items = items;
    
    return group;
}
+(instancetype)groupWithItems:(NSArray *)items footer:(NSString *)footer{
    HDSettingGroup *group = [self groupWithItems:items];
    group.footer = footer;
    return group;
}

+(instancetype)groupWithItems:(NSArray *)items header:(NSString *)header{
    HDSettingGroup *group = [self groupWithItems:items];
    group.header = header;
    return group;
    
}

@end
