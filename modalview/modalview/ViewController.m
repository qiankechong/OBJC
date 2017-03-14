//
//  ViewController.m
//  ModalView
//
//  Created by Jonnyqian on 2017/3/13.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"
#import "Modal2ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)CreateModalView:(id)sender
{
    
    self.view.backgroundColor = [UIColor greenColor];
    UIButton *but  = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [but setFrame:CGRectMake(0, 200, 100, 100)];
    [but setTitle:@"模态视图" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(buttonPress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}

-(void)buttonPress
{
    Modal2ViewController * modalvc= [[Modal2ViewController alloc]init];
    modalvc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    modalvc.modalPresentationStyle  = UIModalPresentationPageSheet; 

    [self presentViewController:modalvc animated:YES completion:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
