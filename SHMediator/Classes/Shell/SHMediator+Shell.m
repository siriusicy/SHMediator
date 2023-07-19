//
//  SHMediator+Shell.m
//  Pods
//
//  Created by ChenJie on 2023/7/19.
//

#import "SHMediator+Shell.h"

NSString * const kTarget_Shell = @"ShellActions";

@implementation SHMediator (Shell)

///新增埋点
+ (void)addTrackWithEvent:(NSString *)event params:(NSDictionary *)infoDic {
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"sh_event"] = event;
    params[@"infoDic"] = infoDic;
    
    [self.sharedInstance performTarget:kTarget_Shell
                                action:@"addTrack"
                                params:params.copy
                     shouldCacheTarget:YES];
    
}



@end
