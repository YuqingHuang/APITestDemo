//
//  DemoService.h
//  APITestDemo
//
//  Created by Yuqing Huang on 2/28/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoAPI.h"

@interface DemoService : NSObject

@property(nonatomic, strong) DemoAPI *api;

- (instancetype)initWithAPI:(DemoAPI *)api;
- (void)getWeatherInfo;

@end
