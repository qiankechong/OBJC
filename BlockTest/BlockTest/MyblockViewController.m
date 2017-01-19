//
//  MyblockViewController.m
//  BlockTest
//
//  Created by Jonnyqian on 2017/1/17.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "MyblockViewController.h"

@interface MyblockViewController ()

@property (weak, nonatomic) IBOutlet UITextField *myTextfiled;
@end

@implementation MyblockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myTextfiled.returnKeyType = UIReturnKeyGo;
    UITextField *mytxtf = [[UITextField alloc ]initWithFrame:CGRectMake(100, 100, 200, 40)];
    [self.view addSubview:mytxtf];
    mytxtf.borderStyle = UITextBorderStyleRoundedRect;
    mytxtf.backgroundColor = [UIColor whiteColor];
    
    mytxtf.text = @"my create one ";
    
    
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
