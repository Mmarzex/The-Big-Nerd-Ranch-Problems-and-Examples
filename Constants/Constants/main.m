//
//  main.m
//  Constants
//
//  Created by Max Marze on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // in literal NSString, use \u for arbitrary unicode chars
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale * here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
        
    }
    return 0;
}

