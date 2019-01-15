//
//  NSObject+Selector.m
//  测试
//
//  Created by gao on 2019/1/14.
//  Copyright © 2019年 gao. All rights reserved.
//

#import "NSObject+Selector.h"

@implementation NSObject (Selector)

- (void)doesNotRecognizeSelector:(SEL)aSelector {
    NSLog(@"NSObject doesNotRecognizeSelector %@",NSStringFromSelector(aSelector));
}



@end
