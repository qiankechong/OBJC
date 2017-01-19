//
//  NSArray+log.m
//  SingerBrowser
//
//  Created by Jonnyqian on 2017/1/18.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "NSArray+log.h"

@implementation NSArray (log)
- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *str = [NSMutableString stringWithFormat:@"%lu (\n", (unsigned long)self.count];
    
    for (id obj in self) {
        [str appendFormat:@"\t%@, \n", obj];
    }
    
    [str appendString:@")"];
    return str;
}
@end
