//
//  RootViewController.m
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/14.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "RootViewController.h"
#import "SecondTableViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

 - (void)viewDidLoad {
    [super viewDidLoad];
     //NSDictionary初始化
     _sectionTitleArray= [NSArray arrayWithObjects:@"1-10",@"11-20",@"21-30",@"31-40",@"41-50",@"51-60",@"61-70",@"71-80",@"81-90",@"91-100", nil];
     //初始化一个元素
     NSDictionary *dictionary = [NSDictionary dictionaryWithObject:@"张三" forKey:@"zhangsan"];
     //初始化两个元素
     NSDictionary *dictionary2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"11", @"1", @"22", @"2", nil];
     //根据一个字典进行初始化
 //    NSDictionary *dictionary3 = [[NSDictionary alloc] initWithDictionary:dictionary2];
     //以文件内容初始化字典
     NSString *path = @"/../.../1.plist";
     NSDictionary *dictionary4 = [[NSDictionary alloc] initWithContentsOfFile:path];
     NSDictionary * dict = @{@"key1":@"value1", @"key2":@"value2"};

     NSArray *arr = @[@"1",@"one",@"3",@4,@"ONE"];
     NSLog(@"arr = %@",arr);
     NSLog(@"dict = %@",dict);
     
     NSDictionary * dict2;
     NSInteger i;//
     for (i=0; i<arr.count; i++) {
         dict2 = arr[i];
         NSLog(@"arr = %@",arr[i]);
        // NSDictionary   *dict = self.listData[row];
     }
     NSLog(@"dict%@", dict);
     NSLog(@"dict2%@", dict2);
     //获取所有键的集合
     NSArray *allKeys = [dictionary allKeys];
     NSLog(@"keys____%@", allKeys);
        NSLog(@"keys____count:%lu", allKeys.count);
     NSArray *allKeys2 = [dictionary allValues];
     NSLog(@"allValues:%@", allKeys2);
     //获取所有键的集合
     NSArray *allKeys3 = [dictionary2 allValues];
     NSLog(@"allValues:%@", allKeys3);
     self.allCities = @{@"key1":@"value1", @"key2":@"value2"};
     self.allKeys  = [self.allCities allKeys ];
     
     NSDictionary *
     __allCities =@[
                    @{
                        @"cities":@[@"广州",@"东莞",@"深证",@"珠海"],
                        @"header":@"广东",
                        @"footer":@"广东很不错"
                        },
                    @{
                        @"cities":@[@"杭州",@"宁波",@"温州",@"台州"],
                        @"header":@"浙江",
                        @"footer":@"浙江还可以"
                        },
                    
                    @{
                        @"cities":@[@"南京",@"无锡",@"苏州",@"常州"],
                        @"header":@"江苏",
                        @"footer":@"江苏不错"
                        },
                    ];    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
     
     for (id key in self.allCities) {
         
         NSArray *name = [self.allCities objectForKey:key];
         
         NSLog(@"快速遍历：key = %@,value = %@",key,name);
         
     }
     
    self.title = @"navigation test2";
     UIColor *color = [[UIColor alloc]initWithRed:0.0 green:0.0 blue:1.0 alpha:1];//通过RGB来定义自己的颜色
     UIColor *color1 = [UIColor greenColor];
     [self.tableView setSeparatorColor:color1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
   // NSInteger i = 3;
   // NSLog(@"numberOfSectionsInTableView %lu",self.allCities.count);
    return self.allCities.count;//Dictionary.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
  
 //   NSDictionary *dic = __allCities[section];
   // NSArray *arr = dic[@"cities"];
 //     NSLog(@"numberOfRowsInSection: %lu",self.allCities.count);
    return  self.allCities.count;//arr.count;

   // return i;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [_sectionTitleArray objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    static NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
 //   cell.color
   // cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    static NSInteger i = 0;
    
    NSLog(@"ggl %ld",i++);
    NSLog(@"indexPath %lu",indexPath.row);
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",i];

    switch (i) {
        case 1:
            cell.backgroundColor = [UIColor redColor];
         //   cell.textLabel.text = [NSString stringWithFormat:@"%d",i];

            break;
        case 2:
            cell.backgroundColor = [UIColor greenColor];
            
            break;
        case 3:
            cell.backgroundColor = [UIColor blueColor];
            
            break;
        default:
            cell.backgroundColor = [UIColor lightGrayColor];

            break;
    }
    
        return cell;
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
    if([segue.identifier isEqualToString:@"ShowSecondView"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSInteger selectedIndex = indexPath.row;
        
        SecondTableViewController *secondViewController = segue.destinationViewController;
        NSString *selectName = self.allKeys[selectedIndex];
        secondViewController.listData = self.allCities[selectName];
        NSLog(@"indexPath.row-- %lu",indexPath.row);
        
        secondViewController.title = selectName;
        //NSLog(@"selectName --%@",selectName);
        
        
    }

}


@end
