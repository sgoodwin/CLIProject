//
//  GOCLIApp.m
//  CLIProject
//
//  Created by Samuel Goodwin on 3/14/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import "GOCLIApp.h"
#import "GOCLICommand.h"

@implementation GOCLIApp

- (id)init{
    if(self = [super init]){
        _routes = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)addCommand:(GOCLICommand *)command{
    [_routes setObject:command forKey:[command stringValue]];
}

- (void)printUsage{
    NSLog(@"No command specified!");
    NSLog(@"Commands I know include:");
    [[_routes allKeys] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@", obj);
    }];
}

- (int)handleArgC:(int)argc andArgV:(const char **)argv{
    if(argc < 2){
        [self printUsage];
        return -1;
    }
    
    
    NSString *commandString = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
    for(int i=2;i<argc;i++){
        // Generate arg hash?
        NSLog(@"arg %i: %s", i, argv[i]);
    }
    
    NSDictionary *args = [NSDictionary dictionary];
    GOCLICommand *command = [_routes objectForKey:commandString];
    if(command){
        return [command run:args];
    }else{
        [self printUsage];
        return -1;
    }
}

@end
