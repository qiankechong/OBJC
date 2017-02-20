//
//  HDSettingGroup.h
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDSettingGroup : NSObject


@property(nonatomic,strong)NSArray *items;

@property(nonatomic,copy)NSString *header;//组头
@property(nonatomic,copy)NSString *footer;//组尾


+(instancetype)groupWithItems:(NSArray *)items;

+(instancetype)groupWithItems:(NSArray *)items header:(NSString *)header;

+(instancetype)groupWithItems:(NSArray *)items footer:(NSString *)footer;


@end
