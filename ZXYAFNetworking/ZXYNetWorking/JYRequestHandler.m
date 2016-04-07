//
//  JYRequestHandler.m
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/6.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import "JYRequestHandler.h"
#import "AFNetworking.h"
#import "AFNetworkActivityIndicatorManager.h"
#import "NSDictionary+Addtion.h"

@implementation JYRequestHandler

+(JYRequestHandler*)sharedInstance{
    static JYRequestHandler *handler = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        handler = [[JYRequestHandler alloc] init];
    });
    return handler;
}
-(instancetype)init{
    self = [super init];
    if (self) {
        self.netWorkError = NO;
        [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
        self.manager = [AFHTTPSessionManager manager];
        self.manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        self.manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    return self;
}

-(JYRequest*)requestWithUrl:(NSString *)url requestMethod:(JYRequestMethod)method params:(NSMutableDictionary*)params delegate:(id)delegate target:(id)target action:(SEL)action showHUDView:(UIView*)view successedBlock:(RequestSuccessedBlock)   successedBlock failed:(RequestFaildedBlock)failedBlock{
    if (method == JYRequestMethodGet) {
        if (self.requestItems[url]) {
            return self.requestItems[url];
        }
    }else if (method == JYRequestMethodPost){
        NSString *urlString = [url stringByAppendingString:[params keyValueString]];
        if (self.requestItems[urlString]) {
            return self.requestItems[urlString];
        }
    }
    self.request = [[JYRequest alloc] initWithUrl:url requestMethod:method params:params delegate:delegate target:target action:action showHUD:view successBlock:successedBlock failedBlock:failedBlock];
    [self.requestItems setObject:self.request forKey:self.request.url];
    return self.request;
}

+(void)cancelAllRequest{
    JYRequestHandler *handler = [JYRequestHandler sharedInstance];
    for (JYRequest*request in handler.requestItems.allValues) {
        [request.task cancel];
    }
    [handler.requestItems removeAllObjects];
    handler.request = nil;
}
+(void)cancelRequest:(JYRequest*)request{
    JYRequestHandler *handler = [JYRequestHandler sharedInstance];
    if (handler.requestItems[request.url]) {
        [[handler.requestItems[request.url] task] cancel];
        [handler.requestItems removeObjectForKey:request.url];
    }
    if (request == handler.request) {
        handler.request = nil;
    }
}
+(void)startMonitoring{
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"没有网络");
                break;
                case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知的");
                break;
                case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"wifi");
                break;
                case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"移动数据");
                break;
            default:
                break;
        }
        
    }];
}
@end
