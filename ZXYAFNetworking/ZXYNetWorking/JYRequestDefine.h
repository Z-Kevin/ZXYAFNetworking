//
//  JYRequestDefine.h
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/6.
//  Copyright © 2016年 zxy. All rights reserved.
//

#ifndef JYRequestDefine_h
#define JYRequestDefine_h

typedef NS_ENUM(NSInteger , JYRequestMethod) {
    JYRequestMethodGet = 0,
    JYRequestMethodPost,
    JYRequestMethodHead,
    JYRequestMethodPut,
    JYRequestMethodDelete,
};
/**
 *  请求成功调用的Block
 *
 *  @param returnDic 成功后回调的参数
 */
typedef void(^RequestSuccessedBlock)(NSDictionary*responseDic);
/**
 *  请求失败调用的Block
 *
 *  @param error 失败后回调调用的参数
 */
typedef void(^RequestFaildedBlock)(NSError *error);

#endif /* JYRequestDefine_h */
