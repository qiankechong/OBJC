//
//  UIImage+ex.m
//  WyLottery
//
//  Created by Jonnyqian on 2017/1/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "UIImage+ex.h"

@implementation UIImage (ex)
-(instancetype)originalImage
{
    return  [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

}

@end
