//
//  HDSettingGroup.h
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingGroup : NSObject


@property(nonatomic,strong)NSArray *items;


+(instancetype)groupWithItems:(NSArray *)items;



@end
