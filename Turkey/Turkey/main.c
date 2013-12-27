//
//  main.c
//  Turkey
//
//  Created by Jamal Kharrat on 4/22/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    //decalre a vairable for the weight of the turkey
    float weight ;
    // use a value for weight
    weight = 14.2;
    //decalre a variable for cooking time
    float cookingTime;
    //calculate cookingTime
    cookingTime = 15.0+15.0*weight;
    
    //print the calculation to the console
    printf("Cookit for %f minutes.\n", cookingTime);
    
    return 0;
    
}

