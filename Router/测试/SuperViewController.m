//
//  SuperViewController.m
//  Unity-iPhone
//
//  Created by apple on 2019/2/22.
//

#import "SuperViewController.h"

@interface SuperViewController ()

@end

@implementation SuperViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}


+ (instancetype)createViewController:(NSString *)vcName {
    return [self createViewController:vcName withParameter:nil] ;
}

+ (instancetype)createViewController:(NSString *)vcName withParameter:(NSDictionary *)parameter {
    Class vcClass = NSClassFromString(vcName);
    SuperViewController * viewController = [vcClass viewController];
    
    [viewController setValuesForKeysWithDictionary:parameter];
    
    NSAssert([viewController isKindOfClass: [UIViewController class]], @"传入的vcName不合法");
    
    return viewController;
    
}


+ (instancetype)viewController {
    return [[self alloc] init];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}



@end
