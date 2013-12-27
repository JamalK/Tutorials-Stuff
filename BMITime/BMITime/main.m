//
//  main.m
//  BMITime
//
//  Created by Jamal Kharrat on 4/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       //create an array of employee objects
        NSMutableArray *employees = [[NSMutableArray alloc]init];
        
        //create a dictionay of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc]init];
        
        
        for (int i=0; i<10; i++)
        {
            Employee *person = [[Employee alloc]init];
            
            [person setWeightInKilos:70+i];
            [person setHeightInMeters:1.8-i/10];
            [person setEmployeeID:i];
            
            [employees addObject:person];
            
            //is this the first employee
            if (i==0)
                [executives setObject:person forKey:@"CEO"];
            if (i==1)
                [executives setObject:person forKey:@"CTO"];
            
            
        }
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        //create 10 assests;
        for (int i=0;i<10; i++)
        {
            Asset *asset =[[Asset alloc]init];
//            NSString *currentLabel =[NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:[NSString stringWithFormat:@"Laptop %d", i]];
            [asset setResaleValue:i*17];
            
            NSUInteger randomIndex = random() %[employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAssetObject:asset];
            [allAssets addObject:asset];
            
        }
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ea = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa,ea, nil]];
        
        
        NSLog(@"Employees %@",employees);
        NSLog(@"Giving up ownership of one Employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"All Assets : %@",allAssets);
        NSLog(@"Exectutivers : %@:",executives);
        executives=nil;
        NSPredicate *predicate=[NSPredicate predicateWithFormat:@"holder.valueOfAssets >70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate ];
        NSLog(@"to be reclaimed %@",toBeReclaimed);
        toBeReclaimed=nil;
        
        
        NSLog(@"giving ownership of arrasy");
        allAssets=nil;
        employees=nil;
        
        
    }
    sleep(100);
    return 0;
}

