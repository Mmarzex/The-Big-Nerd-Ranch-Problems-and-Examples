//
//  Logger.m
//  Callbacks
//
//  Created by Max Marze on 6/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    // Create mutable data if it doesn't exist
    if(!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string= [[NSString alloc] initWithData:incomingData encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //Uncomment to see entire fetched file
    //NSLog(@"The whole string is %@", string);
}

//Called if fetch fails

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}
@end
