//
//  NSDictionary+log.m
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/21.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "NSDictionary+log.h"

@implementation NSDictionary (Log)
- (NSString *)descriptionWithLocale:(id)locale
{
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
