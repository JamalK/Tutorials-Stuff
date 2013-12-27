//
//  main.m
//  Applianeces
//
//  Created by Jamal Kharrat on 5/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
    
        Appliance *appliance = [[Appliance alloc]init];
        
        NSLog(@"a is %@",appliance);
        
        [appliance setVoltage:143];
        [appliance setValue:@"Washing machine" forKey:@"productName"];
        
        NSLog(@" a is %@",appliance);
        NSLog(@"The product name is %@",[appliance valueForKey:@"productName"]);
        
        
        
    }
    return 0;
}

