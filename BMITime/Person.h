//
//  Person.h
//  BMITime
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //It has two instance variables
    float heightInMeters;
    int weightInKilos;
}
@property float heightInMeters;
@property int weightInKilos;

//Methods to set variables
/*- (void)setHeightInMeters:(float)h;
- (void)setWeightInKilos:(int)w;

//Methods to get variables
- (float)heightInMeters;
- (int)weightInKilos; */

//Method to calculate BMI
- (float)bodyMassIndex;

@end
