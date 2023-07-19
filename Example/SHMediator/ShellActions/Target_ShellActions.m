//
//  Target_ShellActions.m
//  FGCQLibClient-mobile
//
//  Created by ChenJie on 2023/7/19.
//

#import "Target_ShellActions.h"

@implementation Target_ShellActions

- (void)Action_addTrack:(NSDictionary *)params {
    
    NSString *event = [params getString:@"sh_event"];
    NSDictionary *info = [params getDictionary:@"infoDic"];
    
//    [BuriedPointTool buriedPointWithEventId:event dic:dict];
    
    NSLog(@"-=-=-= event : %@ \n info: %@ -=-=-=", event, info);
}



@end
