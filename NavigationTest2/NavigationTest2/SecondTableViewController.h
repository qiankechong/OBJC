//
//  SecondTableViewController.h
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/15.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondTableViewController : UITableViewController
@property(nonatomic,strong )NSDictionary *secondCities;
@property(nonatomic,strong ) NSArray *secondKeys;
@property(nonatomic,weak)NSArray *secondSectionTitleArray;
@property(nonatomic,strong) NSArray *listData;
@end
