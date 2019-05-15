//
//  ViewController.m
//  测试
//
//  Created by gao on 2019/1/7.
//  Copyright © 2019年 gao. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Router.h"


@interface ViewController ()

@property (nonatomic,strong) UIView * proxy ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  
    // 有直接用UIViewController , 还有用SuperViewController , 推荐还是用SuperViewController
    
}


- (IBAction)gotoSec:(id)sender {
    UIViewController * vc = [UIViewController createViewController:@"SecondViewController" withParameter:@{}];
    [vc setCallBack:^(NSDictionary * _Nonnull data) {
        NSLog(@"可以设置回调 参数 : %@",data);
    }];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)gotoThird:(id)sender {
    UIViewController * vc = [UIViewController createViewController:@"ThirdViewController" withParameter:@{
                                                                                                          @"type":@(3),
                                                                                                          @"userId":@"2131231234"
                                                                                                          }];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)gotoFour:(id)sender {
    
    UIViewController * vc = [UIViewController createViewController:@"FourViewController" withParameter:@{@"projectId":@"846252845"}];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
