//
//  UIViewController+Router.m
//  测试
//
//  Created by gao on 2019/1/15.
//  Copyright © 2019年 gao. All rights reserved.
//

#import "UIViewController+Router.h"
#import <objc/runtime.h>

@implementation UIViewController (Router)

+ (instancetype)createViewController:(NSString *)vcName {
    return [self createViewController:vcName withParameter:nil] ;
}

+ (instancetype)createViewController:(NSString *)vcName withParameter:(NSDictionary *)parameter {
    Class vcClass = NSClassFromString(vcName);
    UIViewController * viewController = [vcClass viewController];
    
    [viewController setValuesForKeysWithDictionary:parameter];
    
    NSAssert([viewController isKindOfClass: [UIViewController class]], @"传入的vcName不合法");
    
    return viewController;
    
}

- (void)setCallBack:(callBack)callBack {
    objc_setAssociatedObject(self, @"callBack", callBack, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (callBack)callBack {
    return objc_getAssociatedObject(self, @"callBack");
}


+ (instancetype)viewController {
    return [[self alloc] init];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}



@end
