//
//  Target_CommonActions.h
//  IOSGmSDK
//
//  Created by ChenJie on 2023/7/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_CommonActions : NSObject

///
- (UIViewController *)Action_orderConfirmVC:(NSDictionary *)params ;


///app启动, 做一些初始化操作
- (void)Action_appDidFinishLaunching111:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
