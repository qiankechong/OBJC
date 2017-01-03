//
//  View.m
//  XibTest
//
//  Created by Jonnyqian on 2017/1/3.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "View.h"

@implementation View

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(View *) instanceTextView
{
    NSArray * nibview = [[NSBundle mainBundle]loadNibNamed:@"View" owner:self options:nil];
    return  [nibview objectAtIndex:0];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return  self;
}

@end
