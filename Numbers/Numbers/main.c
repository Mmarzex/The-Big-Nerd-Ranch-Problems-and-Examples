//
//  main.c
//  Numbers
//
//  Created by Max Marze on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    double y = 12345.6789;
    printf("y is %.2f\n", y);
    printf("y is %.2e\n", y);
    float x = sinf(1.0);
    printf("The sin of 1 is %.3f\n", x);
    return 0;
}

