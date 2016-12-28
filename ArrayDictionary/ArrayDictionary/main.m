//
//  main.m
//  ArrayDictionary
//
//  Created by Jonnyqian on 2016/12/27.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array1 = [NSArray arrayWithObjects:@"zhangsan",@"zhangfei",nil];
        
        NSArray *array2 = [NSArray arrayWithObjects:@"lisi",@"liping", nil];
        
        
        
        //第一元素：key：@“zhang"   value:array1
        
        //第二元素：key: @"li:      value:array2
        
        NSDictionary *dic1 = [[NSDictionary alloc] initWithObjectsAndKeys:array1,@"zhang",array2,@"li", nil];
        
        
        
        NSUInteger count = dic1.count; //字典元素个数
        
        NSLog(@"count:%d",count);
        
        //2.获取字典中所有的key
        
        NSArray *allKeys = [dic1 allKeys]; //dic1.allKeys.
        
        NSLog(@"allKeys= %@",allKeys);
        
        //3.获取字典中所有的value
        
        NSArray *allValues = [dic1 allValues];
        
        NSLog(@"allValues = %@",allValues);
        
        //4.通过key取得value
        
        NSArray *array3 = [dic1 objectForKey:@"zhang"];
        
        NSLog(@"array3 = %@",array3);
        //------------字典中优化的方法
        NSDictionary *dic3 = @{@"zhang": array1,@"li":array2};
        
        NSLog(@"dic3 = %@",dic3);
        // insert code here...
        
        NSArray *arr = @[@"1",@"one",@"3",@4,@"ONE"];
        NSLog(@"arr = %@",arr);
        
        NSString *str =[arr objectAtIndex:2];
        NSLog(@"%@",str);
        
        //2)用简化的方式访问数组元素
        str = arr[1];   //C语言形式的数组元素访问
        NSLog(@"%@",str);
        
        NSDictionary *dict = @{@"zbz":@"zhangbozhi",@"cgx":@"chenguanxi",@"xzmly":@"hello"};
        
  
        //2)用简写形式,获取key对应的value
        NSLog(@"%@",dict[@"zbz"]);
         NSLog(@"dict1221%@",dict);
        
        NSArray *myArr = @{@"zbz":@"zhangbozhi",@"cgx":@"chenguanxi",@"xzmly":@"hello"};
        NSLog(@"dict%@",myArr);
        
        
        //字典互相嵌套
        
        NSDictionary *dic11 = @{@"name":@"zhangsan", @"age":@"10"};
        NSDictionary *dic2 = @{@"name":@"lisi", @"age":@"13"};
            NSDictionary *dic = @{@"dic1":dic11, @"dic2":dic2};
        NSLog(@"dict  qiantao %@",dic);
        
         // 数组套字典
        NSArray *arrinDict = @[dic11, dic2];
        NSLog(@"arrinDict %@",arrinDict);
        NSString *str1 =[arrinDict objectAtIndex:0];
        
        NSLog(@"123%@",str1);
        
        NSDictionary *dic12 = arrinDict[0];
        NSLog(@"dic12%@",dic12);
        
        
        
//        for (NSDictionary *dic in arr) {
//            for (NSString *str in dic) {
//            NSLog(@"%@", [dic objectForKey:str]);
//            }
//        }

        //    // 遍历
        //    for (NSString *str in dic) {
        //      // 找value
        //        NSDictionary *temp = [dic objectForKey:str];
        //        for (NSString *str in temp) {
        //            NSLog(@"%@", [temp objectForKey:str]);
        //        }
        //    
        //    }

        
        NSLog(@"Hello, World!");
    }
    return 0;
}
