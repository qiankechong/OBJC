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
{
    @private   NSMutableArray * _userList;
}
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
#warning     //以文件内容初始化字典 以相对路径读取文件（有错误）
//     NSString *path = @"../MedicalList.plist";
//     NSDictionary *dict4 = [[NSDictionary alloc] initWithContentsOfFile:path];
//     NSLog(@"didict4 = %@",dict4);
//TODO
     NSDictionary * dict = @{@"key1":@"value1", @"key2":@"value2"};
     NSDictionary * dict2 = @{@"key12":@"value12", @"key22":@"value22"};
     NSDictionary * dict3 = @{@"key123":@"value123"};

     NSLog(@"dict%@", dict);
     NSLog(@"dict2%@", dict2);
     NSArray *arr = @[dict ,dict2,dict3];
 
      NSLog(@"arr = %@",arr);

#pragma mark  注释1
  //   NSArray *arr = @[@"1",@"one",@"3",@4,@"ONE"];
  //   NSLog(@"arr = %@",arr);
  //   NSLog(@"dict = %@",dict);
#pragma mark - 注释
//     NSDictionary * dict2;
//     NSInteger i;//
//     for (i=0; i<arr.count; i++) {
//         dict2 = arr[i];
//         NSLog(@"arr = %@",arr[i]);
//        // NSDictionary   *dict = self.listData[row];
//     }
//     NSLog(@"dict%@", dict);
//     NSLog(@"dict2%@", dict2);
     
     //获取所有键的集合
     NSArray *allKeys = [dict allKeys];
     NSLog(@"allKeys____%@", allKeys);
        NSLog(@"keys____count:%lu", allKeys.count);
     NSArray *allvalues = [dict allValues];
     NSLog(@"allvalues:%@", allvalues);
     //获取所有键的集合
     
//     NSArray *allKeys3 = [dictionary2 allValues];
//     NSLog(@"allValues:%@", allKeys3);
//     
//     self.allCities = @{@"key1":@"value1", @"key2":@"value2"};
//     self.arrAllKeys  = [self.allCities allKeys ];

    self.title = @"医学计算器";
    UIColor *color = [[UIColor alloc]initWithRed:0.0 green:0.0 blue:1.0 alpha:1];//通过RGB来定义自己的颜色
    UIColor *color1 = [UIColor greenColor];
    [self.tableView setSeparatorColor:color1];

    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"MedicalList" ofType:@"plist"];
 //    NSLog(@"plistPath:%@", plistPath);//直接打印数据。
   // NSMutableDictionary *allcatagollys = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    _allcatagollys = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
   //  NSLog(@"data:%@", _allcatagollys);//直接打印数据。
     
     self.allcatagollys = [[NSDictionary  alloc] initWithContentsOfFile:plistPath];
    // NSLog(@"allcatagollys %@",self.allcatagollys);
     
     self.arrAllKeys = [self.allcatagollys allKeys];
     NSLog(@"arrAllKeys count %ld",self.arrAllKeys.count);
     NSLog(@"arrAllKeys %@",self.arrAllKeys);
     //获取第二层数据结构
//     self.dictSecondlevel = [self.allcatagollys objectForKey:@"系统"];
//     NSLog(@"dictSecondlevel:%@", self.dictSecondlevel);//直接打印数据
//     NSLog(@"dictSecondlevel count %ld",self.dictSecondlevel.count);
//     
//     self.secondAllKeys = [self.dictSecondlevel allKeys];
//     NSLog(@"secondAllKeys %@",self.secondAllKeys);
//     
     
   //  NSString *str4 = [self.allcatagollys ]
     
    // self.arrAllKeys = [dict4 allKeys];
    // NSLog(@"dict4.count %ld",dict4.count);
     
     
     
     
//     NSDictionary * rootDic = [_allcatagollys objectForKey: @"专科"];
//     NSLog(@"rootDic:%@", rootDic);//直接打印数据。
//   
//     NSDictionary *aDic = [rootDic objectForKey: @"麻醉学"];
//     NSLog(@"aDic:%@", aDic);//直接打印数据。
//
//     NSString *name = [aDic objectForKey: @"New item"];
//     NSLog(@"name:%@", name);//直接打印数据。
     
     NSLog(@"self.allcatagollys 11%lu",self.allcatagollys.count);
     
     
  



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections

    return [self.arrAllKeys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
  
   
    NSString *key = [self.arrAllKeys objectAtIndex:section];
    
    NSLog(@"nbr secondAllKeys %@ section %ld",key,section);
    
    self.dictSecondlevel = [self.allcatagollys objectForKey:key];
    
    NSLog(@"nbr dictSecondlevel:%@", self.dictSecondlevel);//直接打印数据
    NSLog(@"nbr dictSecondlevel count %ld",self.dictSecondlevel.count);
    
    
    self.secondAllKeys = [self.dictSecondlevel allKeys];
//    NSLog(@"nbr dictSecondlevel count %ld",secondallKeys.count);
     NSLog(@"nbr dictSecondlevel %@",self.secondAllKeys );
    
    
    return [self.dictSecondlevel count];

}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return [self.arrAllKeys objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    static NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:cellIdentifier];
    }
    
    
    NSInteger row = [indexPath row];
    NSLog(@"tlt row %ld",row);
    
    NSInteger sec = [indexPath section];
    NSLog(@"tlt section %ld",sec);
    
    
    NSString *key = [self.arrAllKeys objectAtIndex:sec];
    
    self.dictSecondlevel = [self.allcatagollys objectForKey:key];
    
    
    
    self.secondAllKeys = [self.dictSecondlevel allKeys];
    //    NSLog(@"nbr dictSecondlevel count %ld",secondallKeys.count);
    NSLog(@"tlt dictSecondlevel %@",self.secondAllKeys );
    NSLog(@"tlt dictSecondlevel[row] %@",self.secondAllKeys[row] );

    cell.textLabel.text =self.secondAllKeys[row];//[NSString stringWithFormat:@"%ld",row];
  
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
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
/*
#pragma mark - 实现表视图委托方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger selectedIndex = [indexPath row];
    
    SecondTableViewController *citiesViewController = [[SecondTableViewController alloc] initWithStyle:UITableViewStylePlain];
    NSString *selectName = self.arrAllKeys[selectedIndex];
    citiesViewController.listData = self.allCities[selectName];
    citiesViewController.title = selectName;
    NSLog(@"didSelectRowAtIndexPath");
  //  [self.navigationController pushViewController:citiesViewController animated:TRUE];
}*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"ShowSecondView"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSInteger selectedIndex = indexPath.row;
        
        SecondTableViewController *secondViewController = segue.destinationViewController;
        NSString *selectName = self.arrAllKeys[selectedIndex];
        
        secondViewController.listData = self.allcatagollys[selectName];
        NSLog(@"secondViewController.listData%@",secondViewController.listData);
    
      //   for(NSString *s in [])
//        NSDictionary * mydict =  secondViewController.listData[0];
//        
//        NSLog(@"secondViewController mydict%@",mydict);
//  
        
        secondViewController.title = selectName;
        NSLog(@"selectName --%@",selectName);
        
        
    }

}


@end
