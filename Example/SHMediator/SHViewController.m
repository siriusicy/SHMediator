//
//  SHViewController.m
//  SHMediator
//
//  Created by chenjie on 07/19/2023.
//  Copyright (c) 2023 chenjie. All rights reserved.
//

#import "SHViewController.h"
#import <SHMediator/SHMediator+Common.h>
#import <SHMediator/SHMediator+Shell.h>

@interface SHViewController ()

@end

@implementation SHViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    [SHMediator appDidFinishLaunching];
    
    
//    [SHMediator addTrackWithEvent:@"eventXX" params:@{
//        @"info1": @"test1",
//    }];
//
//    UIViewController *vc =[SHMediator orderConfirmVCWithOrderId:@(1)];
//    [self.navigationController pushViewController:vc animated:YES];
//
//
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
