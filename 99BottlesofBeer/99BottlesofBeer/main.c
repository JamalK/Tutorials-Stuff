//
//  main.c
//  99BottlesofBeer
//
//  Created by Jamal Kharrat on 4/23/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numOfBottles)
{
    if(numOfBottles==0)
        printf("There are simply no more bottles of beer on the wall.\n");
    else
    {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n",
               numOfBottles, numOfBottles);
        int oneFewer = numOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n",
               oneFewer);
        singTheSong(oneFewer); // This function calls itself!
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n",
               numOfBottles);
    }
}

int main(int argc, const char * argv[])
{
    
    singTheSong(99);

    
    return 0;
}

