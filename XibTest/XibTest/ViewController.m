//
//  ViewController.m
//  XibTest
//
//  Created by Jonnyqian on 2017/1/3.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"
#import "View1.h"
#import "View2.h"
#import "View.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    View  *view =[View instanceTextView];
//    [self.view addSubview:view];
//    
    View1  *view1 =[View1 instanceTextView1];
    
  //  UIView *view = [view1 lastObject];
    CGRect r = view1.frame;
    r.origin.y += 80;
    view1.frame = r;

    [self.view addSubview:view1];
    
    View  *view =[View instanceTextView];
    
    //  UIView *view = [view1 lastObject];
  //  CGRect r = view1.frame;
    
    r = view.frame;
    r.origin.y = view1.frame.size.height + view1.frame.origin.y;
    view.frame = r ;
    
    [self.view addSubview:view];
    
    View2  *view2 =[View2 instanceTextView2];
    
    r = view2.frame;
    r.origin.y = view.frame.size.height + view.frame.origin.y;
    view2.frame = r ;
    NSLog(@"test");
    [self.view addSubview:view2];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
