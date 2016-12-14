//
//  ViewController.m
//  NavigationView
//
//  Created by Jonnyqian on 2016/12/13.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"
#import "CitiesViewController.h"

@interface ViewController ()
@property   (nonatomic,strong) NSDictionary * dictData;
@property (nonatomic,strong) NSArray *listdata;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.tableView.dataSource = self;
    //self.tableView.delegate = self;
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"provinces_cities" ofType:@"plist"];

    self.dictData = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    self.listdata  = [self.dictData allKeys ];
    self.title = @"JQ省份信息";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark --实现表视图数据源方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.listdata.count;
};

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellIdentifer= @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifer forIndexPath:indexPath];
    NSInteger row = [indexPath row];
    cell.textLabel.text = self.listdata[row];
    return cell;
};

#pragma mark --场景过渡之前的预处理

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(nullable id)sender NS_AVAILABLE_IOS(5_0){
    if([segue.identifier isEqualToString:@"ShowSelectedProvince"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSInteger selectedIndex = indexPath.row;
        
        CitiesViewController *citiesViewController = segue.destinationViewController;
        NSString *selectName = self.listdata[selectedIndex];
        citiesViewController.listData = self.dictData[selectName];
        citiesViewController.title = selectName;
        
    }

}





@end
