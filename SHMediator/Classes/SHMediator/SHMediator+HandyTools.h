//
//  SHMediator+HandyTools.h
//  SHMediator
//
//  Created by ChenJie on 2020/3/10.
//  Copyright © 2020 casa. All rights reserved.
//

#if TARGET_OS_IOS

#import "SHMediator.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SHMediator (HandyTools)

- (UIViewController * _Nullable)topViewController NS_EXTENSION_UNAVAILABLE_IOS("not available on iOS (App Extension)");

- (UIWindow * _Nullable)keyWindow NS_EXTENSION_UNAVAILABLE_IOS("not available on iOS (App Extension)");

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated NS_EXTENSION_UNAVAILABLE_IOS("not available on iOS (App Extension)");

- (void)presentViewController:(UIViewController *)viewControllerToPresent
                     animated:(BOOL)animated
                   completion:(void (^ _Nullable )(void))completion NS_EXTENSION_UNAVAILABLE_IOS("not available on iOS (App Extension)");

@end

NS_ASSUME_NONNULL_END

#endif
