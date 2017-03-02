//
//  ViewController.m
//  Mydict
//
//  Created by Jonnyqian on 2016/12/24.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //1.实例化一个字典对象
    /*
     字典的元素 是任意的对象地址类型
     元素 是键值对   key - value 必须一一对应 成对出现
     最后 nil 作为结束
     字典内容 是无序的 跟存放顺序无关
     key是唯一 的不能重复    但是 不同的key 可以对应相同的值
     
     key通常写成 NSString *
     
     哈希表 散列函数的算法 进行存放和查找  查找效率非常高
     
     */
    
    NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"1",@"one",@"2",@"two",@"3",@"three",@"2015-4-23",@"today",@"xiaohong",@"name",@"2015-4-23",@"date", nil];
    NSLog(@"dict:%@",dict);
    //2.用一个字典实例化另外一个字典
    NSDictionary *dict2 = [[NSDictionary alloc] initWithDictionary:dict];
    NSLog(@"dict2:%@",dict2);
    
    //3.类方法实例化对象
    NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:@"1",@"one",@"2",@"two",@"3",@"three", nil];
    NSLog(@"dict3:%@",dict3);
    
    NSDictionary *dict4 = [NSDictionary dictionaryWithDictionary:dict3];
    NSLog(@"dict4:%@",dict4);
    
    NSArray *keysArr = [[NSArray alloc] initWithObjects:@"one",@"two", nil];
    NSArray *valuesArr = [[NSArray alloc] initWithObjects:@"1",@"2", nil];
    //用两个数组 实例化一个字典 两个数组 元素要一一对应
    NSDictionary *dict5 = [NSDictionary dictionaryWithObjects:valuesArr forKeys:keysArr];
    NSLog(@"dict5:%@",dict5);
    
    //通过key 找到值  重要函数
    
    //只要我们 通过A找A对应的值 那么我们就可以用字典结构来存储
    //查找非常 快
    NSString *str = [dict2 objectForKey:@"date"];
    if (str) {
        NSLog(@"str:%@",str);
    }else {
        NSLog(@"没有找到");//找不到返回nil
    }
    
    
    //快速枚举遍历
    //快速枚举遍历的是key
    for (NSString *key in dict2) {
        NSLog(@"key:%@ - %@",key,[dict2 objectForKey:key]);
    }
    
    //扩展
    //获取字典 所有的key
    NSArray *allKeysArr = [dict2 allKeys];
    NSArray *allValuesArr = [dict2 allValues];
    NSLog(@"%@",allKeysArr);
    NSLog(@"%@",allValuesArr);
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
