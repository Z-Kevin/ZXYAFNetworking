//
//  JYRequestManager.h
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/7.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JYRequest.h"
#import "JYRequestProtocol.h"
#import "JYRequestDefine.h"
#import <UIKit/UIKit.h>
@interface JYRequestManager : NSObject

+(instancetype)sharedInstance;
/*
  get请求方式的三种方式
 */

+(JYRequest*)getRequestWithURL:(NSString*)url parames:(NSMutableDictionary*)paramsDic successBlock:(RequestSuccessedBlock)successBlock failedBlock:(RequestFaildedBlock)failedBlock showHUD:(UIView*)showHUDView;
+(JYRequest*)getRequestWithURL:(NSString *)url parames:(NSMutableDictionary *)paramsDic delegate:(id<JYRequestProtocol>)delegate showHUD:(UIView *)showHUDView;
+(JYRequest*)getRequestWithURL:(NSString *)url parames:(NSMutableDictionary *)paramsDic target:(id)target action:(SEL)action showHUD:(UIView *)showHUDView;

+(JYRequest*)postRequestWithUrl:(NSString*)url params:(NSMutableDictionary*)paramsDict successBlock:(RequestSuccessedBlock)successBlock failedBlcok:(RequestFaildedBlock)failedBlock showHUD:(UIView*)showHUD;
+(JYRequest*)postRequestWithUrl:(NSString *)url params:(NSMutableDictionary *)paramsDict delegate:(id<JYRequestProtocol>)delegate showHUD:(UIView *)showHUD;

+(JYRequest*)postRequestWithUrl:(NSString *)url params:(NSMutableDictionary *)paramsDict target:(id)target action:(SEL)action showHUD:(UIView *)showHUD;


@end
