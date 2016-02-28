//
//  DemoService.m
//  APITestDemo
//
//  Created by Yuqing Huang on 2/28/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import "DemoService.h"

@implementation DemoService

- (instancetype)initWithAPI:(DemoAPI *)api {
    self = [super init];
    if (self) {
        self.api = api;
    }
    
    return self;
}

- (void)getWeatherInfo {
    void (^successHandle)(NSURLSessionDataTask *task, id responseObject) = ^void(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary *response = (NSDictionary *)responseObject;
        NSLog([response valueForKey:@"weather"]);
    };

    
    
    [self.api getWeatherInfoWithSuccessHandle:successHandle failureHandle:nil];
}

@end
