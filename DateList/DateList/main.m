//
//  main.m
//  DateList
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create three NSDate objects
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //Create an array
        
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Add the dates
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        [dateList insertObject:yesterday atIndex:0];
        
        //How many dates?
        //NSLog(@"There are %lu dates", [dateList count]);
        
        //Print a couple
        //NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        //NSLog(@"The thrid date is %@", [dateList objectAtIndex:2]);
        
       /* NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is a date: %@", d);
        } */
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is date: %@", d);
        }
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);
        
    }
    return 0;
}

