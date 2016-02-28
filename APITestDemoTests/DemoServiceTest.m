//
//  DemoServiceTest.m
//  APITestDemo
//
//  Created by Yuqing Huang on 2/29/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DemoService.h"

@interface DemoServiceTest : XCTestCase

@end

@implementation DemoServiceTest

- (void)testDemoService {
    
//    XCTestExpectation *expectation = [self expectationWithDescription:@"Get weather info"];
    
    DemoService *service = [[DemoService alloc] initWithAPI:[[DemoAPI alloc] init]];
    [service getWeatherInfo];
    
//    [self waitForExpectationsWithTimeout:10 handler:nil];
}

@end
