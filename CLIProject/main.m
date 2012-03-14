//
//  main.m
//  CLIProject
//
//  Created by Samuel Goodwin on 3/14/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GOCLIApp.h"
#import "GOCLICommand.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        GOCLIApp *app = [[GOCLIApp alloc] init];
        
        GOCLICommand *command = [[GOCLICommand alloc] init];
        [app addCommand:command];
        
        return [app handleArgC:argc andArgV:argv];
    }
}

