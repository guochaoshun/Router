//
//  SuperViewController.h
//  Unity-iPhone
//
//  Created by apple on 2019/2/22.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

typedef void(^callBackBlock)(id data) ;
@interface SuperViewController : UIViewController

@property(nonatomic,copy) callBackBlock callBack ;

+ (instancetype)createViewController:(NSString *)vcName ;
+ (instancetype)createViewController:(NSString *)vcName withParameter:( NSDictionary * _Nullable )parameter ;

+ (instancetype)viewController ;


@end

NS_ASSUME_NONNULL_END
