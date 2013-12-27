//
//  main.c
//  Challenge
//
//  Created by Jamal Kharrat on 4/23/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    printf("now I is %d\n",*addressOfI);
    printf("An int is %zu bytes\n", sizeof(int)); printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    return 0;
}

