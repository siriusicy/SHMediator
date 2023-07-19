//
//  SHMediator+Shell.h
//  Pods
//
//  Created by ChenJie on 2023/7/19.
//

#import "SHMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface SHMediator (Shell)

///新增埋点
+ (void)addTrackWithEvent:(NSString *)event params:(NSDictionary *)infoDic;



@end

NS_ASSUME_NONNULL_END
