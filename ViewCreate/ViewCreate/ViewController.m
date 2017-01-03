//
//  ViewController.m
//  ViewCreate
//
//  Created by Jonnyqian on 2016/12/29.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *checkbox = [UIButton buttonWithType:UIButtonTypeCustom];
    //  实现单选图片切换功能
    CGRect checkboxRect = CGRectMake(100,100,36,36);
    checkbox.backgroundColor = [UIColor redColor];
    [checkbox setFrame:checkboxRect];
    
    [checkbox setImage:[UIImage imageNamed:@"switch-off-icon.png"] forState:UIControlStateNormal];
    [checkbox setImage:[UIImage imageNamed:@"switch-on-icon.png"] forState:UIControlStateSelected];
    
    [checkbox addTarget:self action:@selector(checkboxClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:checkbox];
}

-(void)checkboxClick:(UIButton *)btn
{
    btn.selected = !btn.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
