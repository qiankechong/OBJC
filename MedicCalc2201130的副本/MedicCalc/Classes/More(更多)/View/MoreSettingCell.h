//
//  HDSettingCell.h
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SettingItem;
@interface MoreSettingCell : UITableViewCell

//1.创建cell对象
+(instancetype)cellWithTableview:(UITableView *)tableView;

//2.获取模型对象，给cell内部的子控件赋值
@property(nonatomic,strong)SettingItem *item;

@end
