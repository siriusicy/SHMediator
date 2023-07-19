//
//  SHMediator+Common.h
//  AliyunOSSiOS
//
//  Created by ChenJie on 2023/7/19.
//

#import <UIKit/UIKit.h>
#import "SHMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface SHMediator (Common)

+ (UIViewController *)orderConfirmVCWithOrderId:(NSNumber *)orderId;

///app启动, 做一些初始化操作
+ (void)appDidFinishLaunching ;

@end

NS_ASSUME_NONNULL_END
