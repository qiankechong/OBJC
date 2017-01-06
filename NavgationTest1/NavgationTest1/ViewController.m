//
//  ViewController.m
//  NavgationTest1
//
//  Created by Jonnyqian on 2016/12/13.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(registerCompletion:) name:@"RegisterCompletionNotification" object:nil];
   //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registerCompletion:) name:@"RegisterCompletionNotification" object:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void)registerCompletion:(NSNotification*)notification {
    NSDictionary *theData =[notification userInfo];
   // NSString *username = [theData objectForKey:@"username"];
    NSString *username = theData[@"username"];
    NSLog(@"username = %@",username);
}




@end
