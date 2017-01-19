//
//  JgSingerModel.m
//  SingerBrowser
//
//  Created by Jonnyqian on 2017/1/18.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "JgSingerModel.h"

@implementation JgSingerModel

-(instancetype)initWithDicit:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
//        self.name = dict[@"name"];
//        self.songname = dict[@"songname"];
//        self.pic = dict[@"pic"];
//        //使用KVC直接赋值
        [self setValuesForKeysWithDictionary:dict];
    }
    return  self;
}

+(instancetype)singerWithDict:(NSDictionary *)dict
{
    return  [[JgSingerModel alloc]initWithDicit:dict];
}

@end


