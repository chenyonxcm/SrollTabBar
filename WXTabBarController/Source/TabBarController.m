//
//  TabBarController.m
//  WXTabBarController
//
//  Created by chenyong on 2017/9/19.
//  Copyright © 2017年 leichunfeng. All rights reserved.
//

#import "TabBarController.h"
#import "WeiXinViewController.h"
#import "ContactsViewController.h"
#import "DiscoverViewController.h"
#import "MineViewController.h"

@interface TabBarController ()<UITabBarControllerDelegate>

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    WeiXinViewController *weixinVC = [[WeiXinViewController alloc] init];
    weixinVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"微信" image:[UIImage imageNamed:@"tabbar_mainframe"] selectedImage:[UIImage imageNamed:@"tabbar_mainframeHL"]];
    UINavigationController *nc1 = [[UINavigationController alloc] initWithRootViewController:weixinVC];
    
    ContactsViewController *contactVC = [[ContactsViewController alloc] init];
    contactVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"通讯录" image:[UIImage imageNamed:@"tabbar_contacts"] selectedImage:[UIImage imageNamed:@"tabbar_contactsHL"]];
    UINavigationController *nc2 = [[UINavigationController alloc] initWithRootViewController:contactVC];
    
    DiscoverViewController *discoverVC = [[DiscoverViewController alloc] init];
    discoverVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:[UIImage imageNamed:@"tabbar_discover"] selectedImage:[UIImage imageNamed:@"tabbar_discoverHL"]];
    UINavigationController *nc3 = [[UINavigationController alloc] initWithRootViewController:discoverVC];
    
    MineViewController *mineVC = [[MineViewController alloc] init];
    mineVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我" image:[UIImage imageNamed:@"tabbar_me"] selectedImage:[UIImage imageNamed:@"tabbar_meHL"]];
    UINavigationController *nc4 = [[UINavigationController alloc] initWithRootViewController:mineVC];
    
    self.viewControllers = @[nc1,nc2,nc3,nc4];

    self.delegate = self;
}


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    NSInteger integer = [self.viewControllers indexOfObject:viewController];
    if (integer != 0) {
        return NO;
    }
    
    return YES;
}
@end
