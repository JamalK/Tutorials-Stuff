//
//  main.m
//  ImageFetch
//
//  Created by Jamal Kharrat on 5/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"]];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if(!data)
        {
            NSLog(@"fetch failed %@",[error localizedDescription]);
            return 1;
            
        }
        NSLog(@"this file is %lu bytes",[data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        
        if(!written)
        {  NSLog(@"Write failed : %@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"Success");
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes",[readData length]);
        
    }
    return 0;
}

