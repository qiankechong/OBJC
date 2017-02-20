//
//  SettingItem.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingItem : NSObject
@property (nonatomic ,copy)NSString *icon;
@property (nonatomic ,copy)NSString *title;

+(instancetype)itemWithTitle:(NSString *)title;


@end
