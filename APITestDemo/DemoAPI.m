//
//  DemoAPI.m
//  APITestDemo
//
//  Created by Yuqing Huang on 2/27/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import "DemoAPI.h"
#import "AFNetworkingClient.h"

//@class DemoService_Swift;
@implementation DemoAPI

- (void)getWeatherInfoWithSuccessHandle:(void (^)(NSURLSessionDataTask *task, id responseObject))successHandle
                          failureHandle:(void (^)(NSURLSessionDataTask *task, NSError *error))failureHandle {
    NSString *subURL = @"data/2.5/weather?lat=35&lon=139&appid=44db6a862fba0b067b1930da0d769e98";
    [[AFNetworkingClient sharedClient] GET:subURL parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        successHandle(task, responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failureHandle(task, error);
    }];
}

@end
