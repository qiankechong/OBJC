//
//  HDSettingCell.m
//  网易彩票
//
//  Created by 后盾网 on 16/5/30.
//  Copyright © 2016年 houdunwang.com. All rights reserved.
//

#import "HDSettingCell.h"

#import "HDSettingItemSwitch.h"
#import "HDSettingItemArrow.h"
#import "HDSettingItem.h"
//#import "HDSettingItemLabel.h"


@implementation HDSettingCell



//1.创建cell对象
+(instancetype)cellWithTableview:(UITableView *)tableView{
    //1.创建cell
    static NSString *reuseID = @"item";
    HDSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseID];
        //设置文字大小
        cell.textLabel.font = [UIFont systemFontOfSize:15];
        //设置子标题的颜色
        cell.detailTextLabel.textColor = [UIColor grayColor];
    }
    return cell;
}

//2.获取模型对象，给cell内部的子控件赋值
-(void)setItem:(HDSettingItem *)item{
    _item = item;
    //给cell赋值
    if (item.icon) {
        self.imageView.image = [UIImage imageNamed:item.icon];
    }
    
    self.textLabel.text = item.title;
    //设置子标题
    if (item.subTitle) {
        self.detailTextLabel.text = item.subTitle;
    }
    //判断是否是箭头或者是开关
    if ([item isKindOfClass:[HDSettingItemArrow class]]) {
        //箭头
        self.accessoryView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }else if ([item isKindOfClass:[HDSettingItemSwitch class]]){
        //开关
        self.accessoryView =[[UISwitch alloc]init];
        //让cell不能被选中
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
//    }else if ([item isKindOfClass:[HDSettingItemLabel class]]){
//        //获取时间
//        HDSettingItemLabel *itemLabel = (HDSettingItemLabel*)item;
//        //显示时间的label
//        UILabel *lable = [[UILabel alloc]init];
//        lable.text = itemLabel.time;
//        lable.font = [UIFont systemFontOfSize:13];
//        lable.textColor =[UIColor grayColor];
//        //设置大小
//        [lable sizeToFit];
//        
//        self.accessoryView = lable;
//    }
    else{
        self.accessoryView = nil;
    }
   
}


@end
