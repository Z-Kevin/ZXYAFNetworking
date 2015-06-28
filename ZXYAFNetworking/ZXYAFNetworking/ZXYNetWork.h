//
//  ZXYNetWork.h
//  ZXYAFNetworking
//
//  Created by ZXY on 15/5/18.
//  Copyright (c) 2015年 zxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXYNetWork : NSObject
+(ZXYNetWork*)sharedManager;

-(void)checkNetWorkingLinked;

@end
