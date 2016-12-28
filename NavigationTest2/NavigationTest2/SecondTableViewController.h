//
//  SecondTableViewController.h
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/15.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondTableViewController : UITableViewController
@property(nonatomic,strong )NSDictionary *dictSecondCata;
@property(nonatomic,strong ) NSArray *arrAllKeys;
@property(nonatomic,weak)NSArray *secondSectionTitleArray;
@property(nonatomic,strong) NSArray *listData;


@end
