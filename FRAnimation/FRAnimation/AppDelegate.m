//
//  AppDelegate.m
//  FRAnimation
//
//  Created by Ray Fong on 16/12/5.
//  Copyright © 2016年 Ray Fong. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "DCIntrospect.h"
#import "NSString+Extension.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [BiliIconFont initWithName:@"iconfont"];
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MainViewController *root = [[MainViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:root];
    self.window.rootViewController = navigationController;
    [[UINavigationBar appearance] setBarTintColor:FR_BLUE_COLOR];
    [[UINavigationBar appearance]
     setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [self.window addSubview:root.view];
    [self.window makeKeyAndVisible];

#if TARGET_IPHONE_SIMULATOR
    [[DCIntrospect sharedIntrospector] start];
#endif
    
    
//    NSArray<NSString *> *texts = [@"这是 Pin 里面使用的文本分词功能的代码，哦对了，完全是本地的，准确率有限" segment:PINSegmentationOptionsNone];
//    [texts enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"%@", obj);
//    }];
    
    return YES;
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
