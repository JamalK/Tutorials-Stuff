//
//  main.c
//  Numbers
//
//  Created by Jamal Kharrat on 4/23/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{

    int i;
    for (i = 0; i < 12; i++) {
         if (i % 3 == 0 ){
             continue;
        }
        printf("checking i = %d\n",i);
        if (i+90==i*i) {
            break;
        }
    }
    printf("The answer is %d.\n", i);
    return 0;
}

