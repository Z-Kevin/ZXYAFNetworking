//
//  JYRequestProtocol.h
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/6.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JYRequestProtocol <NSObject>

@optional
-(void)requestDidFinishedWithResponse:(NSDictionary*)responseDic;

-(void)requestDidFailedWithError:(NSError*)error;

@end
