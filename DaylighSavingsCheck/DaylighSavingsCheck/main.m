//
//  main.m
//  DaylighSavingsCheck
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSTimeZone *current = [[NSTimeZone alloc] init];
        if ([current isDaylightSavingTime]) {
            NSLog(@"It is currently Daylight Savings time");
        } else {
            NSLog(@"It is currently not Daylight Savings Time");
        }
        NSLog(@"The current time zone is %@", current);
        
    }
    return 0;
}

