//
//  main.c
//  Structs
//
//  Created by Jamal Kharrat on 4/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int weightinKgs ;
    float heightinMeters;
}Person;

float bodyMassIndex(Person *a)
{
    return a->weightinKgs/(a->heightinMeters*a->heightinMeters);
    
}


int main(int argc, const char * argv[])
{
    
    Person *jamal=(Person*)malloc(sizeof(Person))  ;
    jamal->heightinMeters=1.8;
    jamal->weightinKgs=70;
    printf("Jamal's weight in Kgs is %d and height in meters is %.2f \n",jamal->weightinKgs,jamal->heightinMeters);
    float bmi = bodyMassIndex(jamal);
    printf("a Person has a bmi of %.2f",bmi );
    free(jamal);
    jamal=NULL;
    return 0;
}

