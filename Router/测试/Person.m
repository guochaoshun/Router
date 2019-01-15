//
//  Person.m
//  测试
//
//  Created by gao on 2019/1/14.
//  Copyright © 2019年 gao. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation Person



- (void)gcs_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context {
    
    // 生成一个新子类
    NSString * newClassName = [NSString stringWithFormat:@"GCSKVO_%@",NSStringFromClass([self class])];
    Class subClass = objc_allocateClassPair([self class], [newClassName UTF8String], 0);
    objc_registerClassPair(subClass);
    object_setClass(self, subClass);
    
    // 保存观察者

    objc_setAssociatedObject(self, @"observer_name", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC) ;
    
    // 重写新子类的set方法
    NSString * selectorName = [NSString stringWithFormat:@"set%@:",keyPath.capitalizedString];
    class_addMethod(subClass, NSSelectorFromString(selectorName), (IMP)setNewValue, "v@:@");
    
    
}

void setNewValue(id self , SEL _cmd , id newValue) {
    
    struct objc_super superClass = {
        self,
        class_getSuperclass([self class])
    };
    
    objc_msgSendSuper(&superClass,_cmd,newValue);

    
    
    NSString * key = NSStringFromSelector(_cmd);
    key = [key substringWithRange:NSMakeRange(3, key.length-4)].lowercaseString;
    
    id observer = objc_getAssociatedObject(self, @"observer_name");
    [observer observeValueForKeyPath:key ofObject:observer change:@{@"GCS_newValue":newValue,@"jkk":@"想写什么就什么"} context:nil];
    
    NSLog(@"已经通知了观察者值改变了");
}











// 这时候做什么都无法挽回崩溃了 , 顶多记录下日志 ,然后GG
- (void)doesNotRecognizeSelector:(SEL)aSelector {
//    method_getTypeEncoding(<#Method  _Nonnull m#>)
    class_addMethod(self.class,aSelector, (IMP)functionForMethod1, "@:");
    NSLog(@"person doesNotRecognizeSelector %@",NSStringFromSelector(aSelector));

}



void functionForMethod1(id self, SEL _cmd) {
    
    NSLog(@"%@, %p", self, _cmd);
    
}



@end
