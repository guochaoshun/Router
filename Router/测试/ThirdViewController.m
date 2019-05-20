//
//  ThirdViewController.m
//  测试
//
//  Created by gao on 2019/1/14.
//  Copyright © 2019年 gao. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"普通的ViewController";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSLog(@"传进来的type : %ld",self.type);

}


@end
