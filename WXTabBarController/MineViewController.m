//
//  MineViewController.m
//  WXTabBarController
//
//  Created by chenyong on 2017/9/19.
//  Copyright © 2017年 leichunfeng. All rights reserved.
//

#import "MineViewController.h"
#import "RandomColor.h"

@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我";
    
    RandomColor *randomColor = [[RandomColor alloc] init];
    self.view.backgroundColor = randomColor.color;
}


@end
