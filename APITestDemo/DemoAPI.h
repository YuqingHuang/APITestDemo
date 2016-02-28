//
//  DemoAPI.h
//  APITestDemo
//
//  Created by Yuqing Huang on 2/27/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DemoAPI : NSObject

- (void)getWeatherInfoWithSuccessHandle:(void (^)(NSURLSessionDataTask *task, id responseObject))successHandle
                          failureHandle:(void (^)(NSURLSessionDataTask *task, NSError *error))failureHandle;

@end
