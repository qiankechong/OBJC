//
//  ModalVC.m
//  ModalView
//
//  Created by Jonnyqian on 2017/3/13.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ModalVC.h"

@interface ModalVC ()

@end

@implementation ModalVC
- (IBAction)Exit:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"GO BACK");
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
