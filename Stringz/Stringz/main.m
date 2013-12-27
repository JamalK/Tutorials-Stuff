//
//  main.m
//  Stringz
//
//  Created by Jamal Kharrat on 5/23/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
      
//        NSMutableString *str = [[NSMutableString alloc]init];
//        for (int i=0; i<10;i++)
//        {
//            [str appendString:@"Objective-C is cool"];
//        }
//        
//        //An instance of error without instantiating it 
//        NSError *error = nil;
//        
//        //pass pointer by refrence to the NS string method
//        BOOL success = [str writeToFile:@"/too/darned/bad.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
//        
//        if (success)
//            NSLog(@"done wrtiting to a file/tmp/cool.txt");
//        else
//            NSLog(@"Writing to a file /temp/cool.txt failed :%@", [error localizedDescription]);
//    
//        
//
        
        NSError *error = nil;
        NSString *str =[[NSString alloc]initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error];
        
        if (!str)
            NSLog(@"Read failed :%@",[error localizedDescription]);
        else
            NSLog(@"resolv.conf looks like this %@", str);
        
        
    }
    return 0;
}

