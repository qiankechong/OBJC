//
//  JgSingerModel.h
//  SingerBrowser
//
//  Created by Jonnyqian on 2017/1/18.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JgSingerModel : NSObject
@property (nonatomic ,copy)NSString * name ;
@property (nonatomic ,copy)NSString * songname ;
@property (nonatomic ,copy)NSString * pic ;

-(instancetype)initWithDicit:(NSDictionary *)dict;

+(instancetype)singerWithDict:(NSDictionary *)dict;

@end
