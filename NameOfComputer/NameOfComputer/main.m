//
//  main.m
//  NameOfComputer
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *name = [NSHost currentHost];
        
        NSString *localName = [name localizedName];
        
        NSLog(@"The name of this computer is, %@", localName);
        
    }
    return 0;
}

