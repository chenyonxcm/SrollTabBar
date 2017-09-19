//
//  RandomColor.m
//  WXTabBarController
//
//  Created by chenyong on 2017/9/19.
//  Copyright © 2017年 leichunfeng. All rights reserved.
//

#import "RandomColor.h"

@implementation RandomColor
- (instancetype)init {
    self = [super init];
    if (self) {
        [self makeRandomColor];
    }
    
    return self;
}

- (void)makeRandomColor {
    int R = arc4random() % 256;
    int G = arc4random() % 256;
    int B = arc4random() % 256;
    
    _color = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
}

@end
