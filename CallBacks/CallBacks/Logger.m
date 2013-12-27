//
//  Logger.m
//  CallBacks
//
//  Created by Jamal Kharrat on 5/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch");
}

-(void)connection:(NSURLConnection *)connection
   didReceiveData:(NSData *)data
{
    NSLog(@"recieved %lu bytes",[data length]);
    
    //create a mutable data if it doesn't exist
    if (!incomingData)
        incomingData = [[NSMutableData alloc]init];
    
    [incomingData appendData:data];
    
}

-(void)connectionDidFinishLoading:(NSURLConnection*)connection
{
    NSLog(@"got it all");
    NSString *string =[[NSString alloc]initWithData:incomingData encoding:NSUTF8StringEncoding];
    incomingData =nil;
    NSLog(@"string has %lu characters",[string length]);
    

    
}

-(void)connection:(NSURLConnection *)connection
                        didFailWithError:(NSError *)error
{
    
    NSLog(@"Connrction failed : %@",[error localizedDescription]);
    incomingData=nil;

    
}
-(void)zoneChange:(NSNotification*)note
{
    NSLog(@"the Sytestem time zone has changed");
}
@end
