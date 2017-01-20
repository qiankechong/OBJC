//
//  AppDelegate.m
//  WyLottery
//
//  Created by Jonnyqian on 2017/1/20.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "AppDelegate.h"
#import "UIImage+ex.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1,创建一个window对象
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    //2,给window添加一个rootviewcontroller
    
    UITabBarController *tabBarc = [[UITabBarController alloc]init];
    self.window.rootViewController = tabBarc;
    NSArray * sbNames = @[@"LotteryHall",
                          @"Arena",
                          @"Discovery",
                          @"History",
                          @"MyLottery"];
    for (NSString * name in sbNames) {
        [self addChildController:tabBarc sbName:name];
        
    }
//    [self addChildController:tabBarc sbName:@"Arena"];
//    [self addChildController:tabBarc sbName:@"Discovery"];
//    [self addChildController:tabBarc sbName:@"History"];
//    [self addChildController:tabBarc sbName:@"LotteryHall"];
//    [self addChildController:tabBarc sbName:@"Mylottery"];
    
    
    
    return YES;
}


-(void )addChildController:(UITabBarController *)tabBarc sbName :(NSString *)sbName{
    //购彩大厅
    //3，给tabBarc控制器添加子控制器
    //拿到sb
    
    UIStoryboard  *sb  = [UIStoryboard storyboardWithName:sbName bundle:nil];
    
    //拿到控制器中的导航控制器
    
    UINavigationController *nav =  [sb instantiateInitialViewController];
    //拿到tabbar 图片
    NSString *imageName = [NSString stringWithFormat:@"TabBar_%@_new",sbName];
    NSString *selectedimageName = [NSString stringWithFormat:@"TabBar_%@_selected_new",sbName];
    UIImage *img = [[UIImage imageNamed:imageName]originalImage];
    
//    NSLog(@"imagenaem %@ ",imageName);
//    NSLog(@"selectedimageName %@ ",selectedimageName);
    
    
    //消除渲染
    
//    img = [img  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIImage *selectedImg = [[UIImage imageNamed:selectedimageName]originalImage];
    
//   selectedImg =  [selectedImg  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
 
    nav.tabBarItem.image = img;
    nav.tabBarItem.selectedImage = selectedImg;
    [tabBarc addChildViewController:nav];

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
