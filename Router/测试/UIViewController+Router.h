//
//  UIViewController+Router.h
//  测试
//
//  Created by gao on 2019/1/15.
//  Copyright © 2019年 gao. All rights reserved.
//

#import <UIKit/UIKit.h>


// 写类别可以, 但是如果是新工程 或者 已经封装过 SuperViewController , 最好还是写在 SuperViewController中
NS_ASSUME_NONNULL_BEGIN

typedef void(^callBack)(NSDictionary * data) ;
@interface UIViewController (Router)

+ (instancetype)createViewController:(NSString *)vcName ;
+ (instancetype)createViewController:(NSString *)vcName withParameter:( NSDictionary * _Nullable )parameter ;
@property (nonatomic,copy) callBack callBack ;

+ (instancetype)viewController ;

@end

NS_ASSUME_NONNULL_END
