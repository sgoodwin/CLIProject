//
//  GOCLICommand.m
//  CLIProject
//
//  Created by Samuel Goodwin on 3/14/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import "GOCLICommand.h"

@implementation GOCLICommand

- (NSString *)name{
    return @"hello";
}

- (NSString *)description{
    return @"hello: prints a basic statement to see if this works";
}

- (int)run:(NSDictionary *)args{
    NSLog(@"I worked!");
    
    return noErr;
}

@end
