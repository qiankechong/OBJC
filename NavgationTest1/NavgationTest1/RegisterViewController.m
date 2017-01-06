//
//  RegisterViewController.m
//  NavgationTest1
//
//  Created by Jonnyqian on 2016/12/13.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end

@implementation RegisterViewController
- (IBAction)save:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^
    {
        NSLog(@"点击save按钮，关闭模态视图");
  //      NSDictionary *dataDict = [NSDictionary dictionaryWithObject:self.txtUserName.text forKey:@"username"];
        NSDictionary *dataDict = @{@"username" : self.txtUserName.text};
        
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"RegisterCompletionNotification" object:nil userInfo:dataDict];
    }];
  }
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:TRUE completion:^
     {
         NSLog(@"点击cancel按钮，关闭模态视图");
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
