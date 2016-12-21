//
//  ThirdViewController.m
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/14.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonOnB;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    #pragma mark - 打印接收到来自A 的值number
    NSLog(@"收到来自A的传值%@",_number);
    
    [_buttonOnB setTitle:[NSString stringWithFormat:@"收到来自A的传值: %@",_number] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
