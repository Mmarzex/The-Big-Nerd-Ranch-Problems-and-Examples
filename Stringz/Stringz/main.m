//
//  main.m
//  Stringz
//
//  Created by Max Marze on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Max is cool!\n"];
        }
        
        NSError *error = nil;
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
    }
    return 0;
}

