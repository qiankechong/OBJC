//
//  Modal2ViewController.m
//  ModalView
//
//  Created by Jonnyqian on 2017/3/13.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "Modal2ViewController.h"

@interface Modal2ViewController ()

@end

@implementation Modal2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *but  = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [but setFrame:CGRectMake(100, 200, 100, 100)];
    [but setTitle:@"返回" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}


-(void)back
{
    [self dismissViewControllerAnimated:YES completion:^
     {
         NSLog(@"GO BACK 2 ");

     }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
