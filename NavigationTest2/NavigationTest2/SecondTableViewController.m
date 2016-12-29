//
//  SecondTableViewController.m
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/15.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "SecondTableViewController.h"
#import "ThirdViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    NSLog(@"count  dictSecondCata %@",self.dictSecondCata);
    NSLog(@"count  dictSecondCata %ld",[self.dictSecondCata count]);
    return [self.dictSecondCata count];
}



- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSLog(@"titleForHeaderInSection%@:",[_secondSectionTitleArray objectAtIndex:section]);
    return [_secondSectionTitleArray objectAtIndex:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSInteger row = [indexPath row];
    NSLog(@"listData[name row@%ld",row);
  
    
    self.arrTitleName  = [self.dictSecondCata allKeys];
    
    NSLog(@"listData[name:%@ ",self.arrTitleName );

    cell.textLabel.text = self.arrTitleName [row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSLog(@"select indexPath.row:%ld,.section:%ld",indexPath.row,indexPath.section);
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"触发该场景切换的sender对象的类型是:%@",[sender class]);
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSInteger   *selectedIndex = indexPath.row;
    
//#pragma mark - 方法一,使用KVC给B 也就是目标场景传值
//    //UIViewController *thirdViewController =[segue destinationViewController];
//    UIViewController *destinationController=[segue destinationViewController];
//    
//   // [thirdViewController setValue:@119 forKey:@number];
//    [destinationController setValue:@"119" forKey:@"number"];
    
//#pragma mark - 方法2,使用属性传值,需导入相关的类.h
//     ThirdViewController *bController=[segue destinationViewController];
//    
//     bController.number=@"188";
  

}


@end
