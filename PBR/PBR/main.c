//
//  main.c
//  PBR
//
//  Created by Jamal Kharrat on 4/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>
#include <math.h>
void cartesianToPolar(float x, float y , double *rPtr, double *thetaPtr)
{
    *rPtr=sqrt(x*x+y*y);
    
    float theta;
    if(x==0)
    {
        if (y==0.0)
        {
            theta=0.0;
        }
        else if (y>0)
        {
            theta = M_PI_2;
        }
        else
        {
            theta = - M_PI_2;
        }
        }
    else {
        theta=atan(y/x);
    }
    *thetaPtr=theta;
}
    void areaCircle (float radius, double *area)
{
    double Pi = 22/7;
    *area = Pi*radius*radius;
}

int main(int argc, const char * argv[])
{
   float radius =5;
    double area;
    areaCircle(radius, &area);
    printf("the are of %f radius circle is %f .\n",radius,area);
    
    
   
    
    
    return 0;
}

