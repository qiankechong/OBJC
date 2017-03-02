//
//  BaseSettingTVC.m
//  MedicCalc
// 提取公共父类
//  Created by Jonnyqian on 2017/3/1.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "BaseSettingTVC.h"


@interface BaseSettingTVC ()

@property(nonatomic,strong)NSArray *groups;

@end

@implementation BaseSettingTVC

//设置表格分组模式group模式
-(instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
    
}

-(NSArray * )getGroups
{
    return nil;
}
//懒加载
-(NSArray *)groups
{
    
    if (!_groups) {
        _groups = [self getGroups];
    }
    return _groups;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置组间距
    self.tableView.sectionFooterHeight = 0;
    self.tableView.sectionHeaderHeight = 15;
    
//    self.tableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0, 0, 15)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    //    NSLog(@"self.groups.count:%ld", self.groups.count);
    
    return self.groups.count;
    
    //    return [_nsarryMore count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //
    //    NSLog(@"[self.groups[section] items].count]:%ld", [self.groups[section] items].count);
    
    return  [self.groups[section] items].count;
    
    //    return  [[_nsarryMore objectAtIndex:section] count];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    //#if NO
    //    static NSString * reuseId = @"reuseIdentifier";
    //
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    //    if (!cell) {
    //        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
    //                                     reuseIdentifier:reuseId];
    //
    //    }
    //
    ////    cell.contentView.backgroundColor = [UIColor redColor];
    //    cell.textLabel.textColor = [UIColor blueColor];
    //    cell.textLabel.backgroundColor =[UIColor greenColor];
    //    //设置字体大小
    //    cell.textLabel.font =[UIFont systemFontOfSize:15];
    //
    //    NSLog(@"11");
    //
    
    
    MoreSettingCell *cell = [MoreSettingCell cellWithTableview:tableView];
    
    SettingGroup *group = self.groups[indexPath.section];
    SettingItem *item = group.items[indexPath.row];
    
    cell.item = item;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    
    return 20;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (0 == section) {
        return 1;
    }
    else
    {
        return 20;
    }
    
    
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @" ";
}
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @" ";
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    detailViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    //        dvc.friendsList = _nsarryMore[indexPath.row][@"FriendsList"];
    //    dvc.areaString = [[_nsarryMore objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    //让选中的不被再选中
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SettingGroup *group = self.groups[indexPath.section];
    SettingItem *item = group.items[indexPath.row];
    
    
    if ([item isKindOfClass:[SettingItemArrow class]])
    {
        
        //把item转换成arrow对象
        SettingItemArrow *arrow  = (SettingItemArrow *)item;
        //判读目标控制前与block
        if (arrow.destController)
        {//创建目标控制前对象
            UITableViewController *tvc = [[arrow.destController alloc]init];
            tvc.title = item.title;
            NSLog(@"tvc.title :%@",item.title);
            
            NSLog(@"row :%ld",indexPath.row );
            NSLog(@"section :%ld",indexPath.section );
            [self.navigationController pushViewController:tvc animated:YES];
            
        }else if(arrow.option)
        {
            arrow.option();
        }
        
        
        
        //        [[self navigationController] pushViewController:dvc animated:YES];
    }
    
    
}


@end
