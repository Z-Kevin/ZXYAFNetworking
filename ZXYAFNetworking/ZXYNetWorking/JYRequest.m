//
//  JYRequest.m
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/6.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import "JYRequest.h"
#import "NSDictionary+Addtion.h"
#import "AFNetworking.h"

@implementation JYRequest



-(JYRequest*)initWithUrl:(NSString *)url requestMethod:(JYRequestMethod)method params:(NSDictionary*)params delegate:(id)delegate target:(id)target action:(SEL)action showHUD:(UIView *)view successBlock:(RequestSuccessedBlock)successBlock failedBlock:(RequestFaildedBlock)failedBlock{
    self = [super init];
    if (self) {
        self.requestMethod = method;
        self.params = params;
        self.delegate = delegate;
        self.target = target;
        self.action = action;
        if (params && [params isKindOfClass:[NSDictionary class]]) {
            self.url = [url stringByAppendingString:[params keyValueString]];
        }else{
            self.url = url;
        }
        __weak typeof(self)weakSelf = self;
//        AFHTTPSessionManager *manager = 
    }
    return self;
}
@end
