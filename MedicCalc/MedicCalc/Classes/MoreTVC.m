//
//  MoreTVC.m
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/15.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MoreTVC.h"





@interface MoreTVC ()
@property(nonatomic,strong)NSArray * nsarryMore;
@property(nonatomic,strong)NSArray * arryly2Str;
@property(nonatomic,strong)NSArray *groups;

@end

@implementation MoreTVC

-(NSArray *)groups
{

    if (!_groups) {
        //第一组
        //第一组
        //存储控制器class
        HDSettingItem *item11 = [HDSettingItemArrow itemWithTitle:@"软件设置" ];
        HDSettingItem *item12 = [HDSettingItemArrow itemWithTitle:@"精益产品" ];
        HDSettingGroup *group1 = [HDSettingGroup groupWithItems:@[item11,item12]];
        
        //第二组
        HDSettingItem *item21 = [HDSettingItemArrow itemWithTitle:@"帮助手册" ];
        HDSettingItem *item22 = [HDSettingItemSwitch itemWithTitle:@"意见反馈" ];
        HDSettingItem *item23 = [HDSettingItemSwitch itemWithTitle:@"软件评分" ];
          HDSettingGroup *group2 = [HDSettingGroup groupWithItems:@[item21,item22,item23]];
        
        
        
        //第三组
        //存储block
        HDSettingItem *item31 = [HDSettingItemArrow itemWithTitle:@"检查新版本"];
        HDSettingItem *item32 = [HDSettingItemArrow itemWithTitle:@"推荐给朋友" ];
        HDSettingItem *item33 = [HDSettingItemArrow itemWithTitle:@"关于" ];
        HDSettingGroup *group3 = [HDSettingGroup groupWithItems:@[item31,item32,item33]];
         _groups = @[group1,group2,group3];
        
    }
    return _groups;

}


//设置表格group模式
-(instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSInteger i = 0;
    
//
//    NSBundle *plisthPath = [NSBundle mainBundle]
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //设置页面名称
    self.title = @"更多";
    // 添加帮助按钮
    UIBarButtonItem *helpItem = [[UIBarButtonItem alloc]initWithTitle:@"帮助help"
                                                                style:(UIBarButtonItemStylePlain)
                                                               target:self
                                                               action:@selector(helpItem)];
    
    self.navigationItem.rightBarButtonItem = helpItem;
    
    
    //cell 分组效果
    //readonly
//    self.tableView.style = UITableViewStyleGrouped;
    //设置背景图片
    [self.tableView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]]];
    
    //设置组间距
    self.tableView.sectionFooterHeight = 0;
    self.tableView.sectionHeaderHeight = 15;
    
    self.tableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0, 0, 15)];
    
    NSString *fielPath = [[NSBundle mainBundle] pathForResource:@"more" ofType:@"plist"];
    _nsarryMore = [NSArray arrayWithContentsOfFile:fielPath];
    NSLog(@"students:%@",_nsarryMore);
    NSLog(@"more.count:%ld",[_nsarryMore count]);
    
    for (NSObject *object in _nsarryMore) {
        NSLog(@"数组对象:%@", object);
    }
    for (i = 0; i < [_nsarryMore count]; i++) {
        _arryly2Str = [_nsarryMore objectAtIndex:i];
        NSLog(@"数组对象 str:%@", _arryly2Str);
        NSLog(@"number of rows in section: %ld",[_arryly2Str count]);//it prints the right value
        for (NSObject *object in _arryly2Str) {
            NSLog(@"数组对象 arryly2Str:%@", object);
        }
    }
    
//    [self.tableView backgroundColor:[UIColor redColor]];
    }

-(void)helpItem
{

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

    HDSettingCell *cell = [HDSettingCell cellWithTableview:tableView];

    HDSettingGroup *group = self.groups[indexPath.section];
    HDSettingItem *item = group.items[indexPath.row];
    
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
    detailViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
        
//        dvc.friendsList = _nsarryMore[indexPath.row][@"FriendsList"];
//    dvc.areaString = [[_nsarryMore objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    HDSettingGroup *group = self.groups[indexPath.section];
    HDSettingItem *item = group.items[indexPath.row];
    dvc.areaString =item.title;
    
    NSLog(@"dvc.areaString :%@",item.title);
    
    NSLog(@"row :%ld",indexPath.row );
    NSLog(@"section :%ld",indexPath.section );

    [[self navigationController] pushViewController:dvc animated:YES];
    
    
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
