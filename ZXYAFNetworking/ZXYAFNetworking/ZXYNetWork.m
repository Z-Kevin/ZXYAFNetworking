//
//  ZXYNetWork.m
//  ZXYAFNetworking
//
//  Created by ZXY on 15/5/18.
//  Copyright (c) 2015年 zxy. All rights reserved.
//

#import "ZXYNetWork.h"
#import "AFNetworkReachabilityManager.h"

@implementation ZXYNetWork

+(ZXYNetWork*)sharedManager{
    static ZXYNetWork * shareManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareManager = [[ZXYNetWork alloc] init];
    });
    return shareManager;
}
//判断网络请求的方法
-(void)checkNetWorkingLinked{

    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"net status = %ld",status);
    }];

}

@end

