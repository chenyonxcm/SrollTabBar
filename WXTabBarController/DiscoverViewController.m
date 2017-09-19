//
//  DiscoverViewController.m
//  WXTabBarController
//
//  Created by chenyong on 2017/9/19.
//  Copyright © 2017年 leichunfeng. All rights reserved.
//

#import "DiscoverViewController.h"
#import "RandomColor.h"

@interface DiscoverViewController ()

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"发现";
    
    RandomColor *randomColor = [[RandomColor alloc] init];
    self.view.backgroundColor = randomColor.color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
