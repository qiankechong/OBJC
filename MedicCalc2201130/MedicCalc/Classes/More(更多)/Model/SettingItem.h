//
//  HDSettingItem.h
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingItem : NSObject

@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *title;

+(instancetype)itemWithTitle:(NSString *)title;


@end
