//
//  ViewController.m
//  PlistTest
//
//  Created by Jonnyqian on 2017/1/4.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UITableView *Mytabview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.Mytabview.backgroundColor = [UIColor redColor];
// //   self.TabviewTest
//    self.view.backgroundColor = [UIColor yellowColor];
// //   self.TabViewcellTest.text = @"Frank's Taqble Cell";
//
    NSArray *arr = @[@"美国",@"美国1",@"美国2",@"美国3",@"美国4",@"美国5",@"美国6",@"美国7",@"美国8"];
    self.arrList =arr;
    NSLog(@"arr%@",arr);

    
}
  // Called after the view has been loaded. For view controllers created in code, this is after -loadView. For view controllers unarchived from a nib, this is after the view is set.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
    return 1;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *TableSampleIdenfier =@"1234";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableSampleIdenfier];
    if (cell == nil ) {
        cell = [[UITableViewCell alloc ]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableSampleIdenfier];
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [self.arrList objectAtIndex:row];
    NSLog(@"row:%ld",row);

    return cell;
}

@end
