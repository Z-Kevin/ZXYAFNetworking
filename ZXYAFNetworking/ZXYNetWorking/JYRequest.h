//
//  JYRequest.h
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/6.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JYRequestDefine.h"
#import "JYRequestProtocol.h"

@interface JYRequest : NSObject


@property(nonatomic,assign)JYRequestMethod requestMethod;
@property(nonatomic,copy)NSString *url;
@property(nonatomic,strong)NSDictionary *params;
@property(nonatomic,assign)id<JYRequestProtocol> delegate;
@property(nonatomic,assign)id target;
@property(nonatomic,assign)SEL action;
@property(nonatomic,strong)NSURLSessionDataTask *task;

@property(nonatomic,strong)NSDictionary *dataDic;
@property(nonatomic,strong)NSArray *dataArray;


@property(nonatomic,assign,readonly) BOOL isRunning;
@property(nonatomic,assign,readonly) BOOL isSuspended;
@property(nonatomic,assign,readonly) BOOL isCanceling;
@property(nonatomic,assign,readonly) BOOL isCompleted;

-(JYRequest*)initWithUrl:(NSString *)url requestMethod:(JYRequestMethod)method params:(NSDictionary*)params delegate:(id)delegate target:(id)target action:(SEL)action showHUD:(UIView *)view successBlock:(RequestSuccessedBlock)successBlock failedBlock:(RequestFaildedBlock)failedBlock;
@end
