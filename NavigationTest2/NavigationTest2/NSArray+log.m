//
//  NSArray+log.m
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/21.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
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

