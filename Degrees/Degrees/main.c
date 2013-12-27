//
//  main.c
//  Degrees
//
//  Created by Jamal Kharrat on 4/23/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

//declare a global variable
static float lastTemperature=50;

float celToFeh(float celisus)
{
    lastTemperature = celisus;
    float feh;
    feh=celisus*1.8 +32;
    printf("Each %f Celsius is equal to %f Fehrenheit\n",celisus,feh);
    return feh;
}

int main(int argc, const char * argv[])
{
    float degrees,fehr;
    degrees=0;
    
    fehr=celToFeh(degrees);
    printf("water freezes at %f Fehrenhait which equal to %f degrees\n",fehr,degrees);
    printf("The last temperature converted was %f\n", lastTemperature);
    
    return EXIT_SUCCESS;
}

