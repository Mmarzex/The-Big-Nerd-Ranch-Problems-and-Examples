//
//  Person.m
//  BMITime
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

/*- (void)setHeightInMeters:(float)h
{
    heighInMeters = h;
}
- (void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}
- (float)heightInMeters
{
    return heighInMeters;
}
- (int)weightInKilos
{
    return weightInKilos;
}*/
- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
