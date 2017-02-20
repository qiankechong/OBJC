//
//  SettingItem.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "SettingItem.h"

@implementation SettingItem

+(instancetype)itemWithTitle:(NSString *)title
{
    SettingItem *item = [[self alloc]init];
    item.title = title;
    return item;
}
@end
