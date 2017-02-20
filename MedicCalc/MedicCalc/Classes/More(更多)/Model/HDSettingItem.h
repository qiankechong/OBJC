//
//  HDSettingItem.h
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDSettingItem : NSObject

@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *title;

@property(nonatomic,copy)NSString *subTitle;

+(instancetype)itemWithTitle:(NSString *)title;

+(instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle;

+(instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon;

@end
