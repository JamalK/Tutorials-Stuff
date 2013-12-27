//
//  main.c
//  Angle
//
//  Created by Jamal Kharrat on 4/23/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA,float angleB)
{
    float angleC;
    angleC=(180-(angleA+angleB));
    printf("The remaining angle for %f and %f is %f\n",angleA,angleB,angleC);
    return angleC;
}

int main(int argc, const char * argv[])
{

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

