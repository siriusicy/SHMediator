//
//  Target_CommonActions.m
//  IOSGmSDK
//
//  Created by ChenJie on 2023/7/19.
//

#import "Target_CommonActions.h"
//#import "SHOrderConfirmViewController.h"

@implementation Target_CommonActions

///测试
- (UIViewController *)Action_orderConfirmVC:(NSDictionary *)params {
    
//    SHOrderConfirmViewController *vc = [[SHOrderConfirmViewController alloc] init];
    UIViewController *vc = [[UIViewController alloc] init];
    
    
    return vc;
}

///app启动, 做一些初始化操作
- (void)Action_appDidFinishLaunching111:(NSDictionary *)params {
    
    // TODO:- DoSomeThing
    NSLog(@"Target_CommonActions : appdidFinishLaunching");
}



@end
