//
//  SHMediator+Common.m
//  AliyunOSSiOS
//
//  Created by ChenJie on 2023/7/19.
//

#import "SHMediator+Common.h"

NSString * const kTarget_Common = @"CommonActions";

@implementation SHMediator (Common)

+ (UIViewController *)orderConfirmVCWithOrderId:(NSNumber *)orderId {
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"orderId"] = orderId;
    
    UIViewController *vc = [self.sharedInstance performTarget:kTarget_Common
                                                       action:@"orderConfirmVC"
                                                       params:params
                                            shouldCacheTarget:YES];

    return vc;
}


///app启动, 做一些初始化操作
+ (void)appDidFinishLaunching {
    
    [self.sharedInstance performTarget:kTarget_Common
                                action:@"appDidFinishLaunching111"
                                params:nil
                     shouldCacheTarget:YES];
    
}


@end
