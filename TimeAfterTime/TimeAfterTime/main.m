//
//  main.m
//  TimeAfterTime
//
//  Created by Jamal Kharrat on 4/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

        
        NSHost *myhost =[[NSHost currentHost] init];
        NSString *info = [myhost localizedName];
        NSLog(@"info for this host %@",info);
        
        
    return 0;
}
}

