//
//  View.h
//  XibTest
//
//  Created by Jonnyqian on 2017/1/3.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView
@property (weak, nonatomic) IBOutlet UILabel *BaiduLabel;
+(View *) instanceTextView;

@end
