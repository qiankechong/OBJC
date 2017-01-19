//
//  ViewController.m
//  TestTextFiled
//
//  Created by Jonnyqian on 2017/1/11.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [UITextField b]
//    [self.view endEditing:YES];
//    UITextField *textField = [[UITextField alloc]init];
    
//    if ([self.textFiled canBecomeFirstResponder])
//    {
//        //成为第一响应者。弹出键盘
        [self.textFiled becomeFirstResponder];
//    }
 
//    self.title become
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
