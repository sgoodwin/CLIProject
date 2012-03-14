//
//  GOCLICommand.h
//  CLIProject
//
//  Created by Samuel Goodwin on 3/14/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GOCLICommand : NSObject

- (NSString *)stringValue;

- (int)run:(NSDictionary *)args;

@end
