//
//  GOCLICommand.m
//  CLIProject
//
//  Created by Samuel Goodwin on 3/14/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import "GOCLICommand.h"

@implementation GOCLICommand

- (NSString *)stringValue{
    return @"hello";
}

- (int)run:(NSDictionary *)args{
    NSLog(@"I worked! %@", args);
    
    return noErr;
}

@end
