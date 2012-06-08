//
//  main.c
//  Triangle
//
//  Created by Max Marze on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angle1, float angle2)
{
    float angle3 = 180 - angle1 - angle2;
    return angle3;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

