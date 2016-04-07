//
//  NSDictionary+Addtion.m
//  ZXYAFNetworking
//
//  Created by ZXY on 16/4/6.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import "NSDictionary+Addtion.h"

@implementation NSDictionary (Addtion)
-(NSString*)keyValueString{
    NSMutableString *string = [NSMutableString stringWithString:@"?\n"];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        
        [string appendFormat:@"%@=%@&",key,obj];
        
    }];
    NSLog(@"%ld",[string rangeOfString:@"&"].length);
    
    
    return string;
}
@end
