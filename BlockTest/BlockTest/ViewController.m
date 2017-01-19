//
//  ViewController.m
//  BlockTest
//
//  Created by Jonnyqian on 2017/1/17.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//


#import "ViewController.h"
#import "PersonInfoModel.h"

typedef void (^myBlock)(int ,int ,int  ,int d);
typedef int (^myblock )(int a ,int b);


@interface ViewController ()


@end
//typedef myBlock(^myblock)(int a ,int b)

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int (^blockmy)(int a ,int b)= ^(int a ,int b)
    {
        NSLog(@"hello world block! blockmy result =@%d",a+b);
        return a+b;
    };
    blockmy (1,2);

    myblock mb1  = ^(int a ,int b)
    {
        NSLog(@"hello world block! mb1 result =@%d",a*b);
        return a*b;
    };
    
    mb1(4,5);
    
    myBlock mb2= ^(int a,int b,int c,int d){
        NSLog(@"hello world block! mb2 result =@%d",a*b);

    };
    
    mb2(2,3,0,0);
    // Do any additional setup after loading the view, typically from a nib.
    
    // 创建按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem]; //绘制形状
    // 确定宽、高、X、Y坐标
//    CGRect frame;
//    frame.size.width = 100;
//    frame.size.height = 30;
//    frame.origin.x = 320 / 2 - 50;
//    frame.origin.y = 480 / 2 - 30;
//    [btn setFrame:frame];
    [btn setFrame:CGRectMake(100,100,100,50)];
//    [btn backgroundColor:];
    
    btn.backgroundColor =[UIColor grayColor] ;
    // 设置Tag(整型)
    btn.tag = 10;
    
    // 设置标题
    
    [btn setTitle:@"my create button"forState:UIControlStateNormal];
//    mybut 
//    mybut.titleLabel = @"my create button";
//    mybut.buttonType = UIButtonTypeSystem;
//
    
    
    [self.view addSubview:btn];
    
    NSDictionary *dict = @{@"age":@"28",@"sex":@"man",@"address":@"hangzhou",@"name":@"zhangsan"};
    
    PersonInfoModel *model  = [[PersonInfoModel alloc]init];
    [model setValuesForKeysWithDictionary:dict];
    NSLog(@"dict.name=:%@",model.name);
    NSLog(@"dict.name=:%@",model.age);
    NSLog(@"dict.name=:%@",model.sex);
    NSLog(@"dict.name=:%@",model.address);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
