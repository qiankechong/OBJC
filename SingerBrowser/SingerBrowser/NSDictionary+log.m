//
//  NSDictionary+log.m
//  SingerBrowser
//
//  Created by Jonnyqian on 2017/1/18.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "NSDictionary+log.h"

@implementation NSDictionary (log)
- (NSString *)descriptionWithLocale:(id)locale{
    NSArray *allKeys = [self allKeys];
    NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"{\t\n "];
    for (NSString *key in allKeys) {
        id value= self[key];
        [str appendFormat:@"\t \"%@\" = %@,\n",key, value];
    }
    [str appendString:@"}"];
    
    return str;
}
@end
