//
//  AFNetworkingClient.m
//  APITestDemo
//
//  Created by Yuqing Huang on 2/28/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import "AFNetworkingClient.h"

@implementation AFNetworkingClient

+ (instancetype)sharedClient {
    NSString * const APIBaseURLString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"API_Base_URL"];
    
    static AFNetworkingClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[AFNetworkingClient alloc] initWithBaseURL:[NSURL URLWithString:APIBaseURLString]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];

        _sharedClient.requestSerializer = [AFJSONRequestSerializer serializer];
        _sharedClient.requestSerializer.timeoutInterval = 30;
    });
    
    return _sharedClient;
}
@end
