//
//  main.m
//  BMITime
//
//  Created by Max Marze on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create Employee array
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create employee instance
            Employee *person = [[Employee alloc] init];
            
            //Give instance variabls
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            //Put employee into array
            [employees addObject:person];
            
            // Is first?
            if (i == 0) {
                [executives setObject:person forKey:@"CEO"];
            }
            
            // Is second?
            if (i == 1) {
                [executives setObject:person forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        //Create 10 assets
        for (int i = 0; i < 10; i++) {
            //Create asset
            Asset *asset = [[Asset alloc] init];
            
            //Give label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            //Get random number
            NSUInteger randomIndex = random() % [employees count];
            
            //Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor * ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Give up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"exectuives: %@", executives);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed= [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;
        
       /* // Create first instance of Person
        Employee * person = [[Employee alloc] init];
        
        // Set instance variables
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        // Call bodyMassIndex method
        
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %f", [person employeeID], bmi);
        
        NSLog(@"person (%d, %f) has a BMI of %f", [person weightInKilos], [person heightInMeters], bmi);*/
        
    }
    sleep(0);
    return 0;
}

