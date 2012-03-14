//
//  GOCLIApp.h
//  CLIProject
//
//  Created by Samuel Goodwin on 3/14/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GOCLICommand;
@interface GOCLIApp : NSObject{
    NSMutableDictionary *_routes;
}

- (void)addCommand:(GOCLICommand *)command;
- (int)handleArgC:(int)argc andArgV:(const char **)argv;

@end
