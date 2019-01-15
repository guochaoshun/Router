//
//  FourViewController.m
//  测试
//
//  Created by gao on 2019/1/14.
//  Copyright © 2019年 gao. All rights reserved.
//

#import "FourViewController.h"
#import "UIViewController+Router.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"从storyboard中来的";
    NSLog(@"传进来的项目ID : %@",self.projectId);
    
}

+ (instancetype)viewController {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FourViewController"];
}

@end
