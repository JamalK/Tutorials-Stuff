//
//  main.c
//  ClassCertificates
//
//  Created by Jamal Kharrat on 4/22/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#include <stdio.h>

void congratulateStudents(char *studnet, char *course, int numDays)
{
    printf("%s has done as much as programming in %s as I could fit in %d days\n",studnet,course,numDays);
}

int main(int argc, const char * argv[])
{
    congratulateStudents("Jamal","CS201",30);
    sleep(2);
    congratulateStudents("Tareq","CS201",40);
    sleep(2);
    
    return 0;
}

