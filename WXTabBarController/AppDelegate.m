//
//  RandomColor.m
//  WXTabBarController
//
//  Created by chenyong on 2017/9/19.
//  Copyright © 2017年 leichunfeng. All rights reserved.
//

// 核心代码来自网络，自己封装一些内容，使代码更适用于实际项目中
// 代码来源https://github.com/leichunfeng/WXTabBarController

#import "AppDelegate.h"
#import "TabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    TabBarController *tabBar = [[TabBarController alloc] init];
    self.window.rootViewController = tabBar;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
