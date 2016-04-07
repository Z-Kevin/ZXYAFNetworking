//
//  JYRequestHandler.h
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/6.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JYRequestDefine.h"
#import "JYRequest.h"

@class AFHTTPSessionManager;
@interface JYRequestHandler : NSObject<JYRequestProtocol>

@property(nonatomic,strong)NSMutableDictionary *requestItems;
@property(nonatomic,strong)JYRequest *request;
@property(nonatomic,assign)BOOL netWorkError;
@property(nonatomic,strong) AFHTTPSessionManager *manager;


+(JYRequestHandler*)sharedInstance;

-(JYRequest*)requestWithUrl:(NSString *)url requestMethod:(JYRequestMethod)method params:(NSMutableDictionary*)params delegate:(id)delegate target:(id)target action:(SEL)action showHUDView:(UIView*)view successedBlock:(RequestSuccessedBlock)successedBlock failed:(RequestFaildedBlock)failedBlock;

+(void)cancelAllRequest;
+(void)cancelRequest:(JYRequest*)request;
+(void)startMonitoring;
@end
