//
//  RootViewController.h
//  NavigationTest2
//
//  Created by Jonnyqian on 2016/12/14.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController
@property(nonatomic,strong )NSDictionary *allCities;

@property(nonatomic,strong )NSDictionary *allcatagollys;
@property(nonatomic,strong )NSDictionary *dictSecondlevel;

@property(nonatomic,strong ) NSArray *arrAllKeys;
@property(nonatomic,strong ) NSArray *secondAllKeys;
@property(nonatomic,weak)NSArray *sectionTitleArray;
@end
