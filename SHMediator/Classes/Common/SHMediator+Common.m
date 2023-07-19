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
                                            shouldCacheTarget:NO];

    return vc;
}
@end
