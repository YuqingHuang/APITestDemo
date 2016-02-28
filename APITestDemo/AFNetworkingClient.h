//
//  AFNetworkingClient.h
//  APITestDemo
//
//  Created by Yuqing Huang on 2/28/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
@interface AFNetworkingClient : AFHTTPSessionManager

+ (instancetype)sharedClient;

@end
