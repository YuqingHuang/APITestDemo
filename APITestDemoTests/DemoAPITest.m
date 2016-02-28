//
//  DemoAPITest.m
//  APITestDemo
//
//  Created by Yuqing Huang on 2/28/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DemoAPI.h"
#import "AFNetworkingClient.h"



@interface DemoAPITest : XCTestCase

@end

@implementation DemoAPITest

- (void)testGetWeatherInfo {

    
    XCTestExpectation *expectation = [self expectationWithDescription:@"Get weather info"];
    
    DemoAPI *api = [[DemoAPI alloc] init];
    [api getWeatherInfoWithSuccessHandle:^(NSURLSessionDataTask *task, id responseObject) {
        [expectation fulfill];
        NSLog(@"Successed");
    } failureHandle:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"Failed");
    }];

    [self waitForExpectationsWithTimeout:10 handler:nil];
}

@end
