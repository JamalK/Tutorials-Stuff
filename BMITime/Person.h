//
//  Person.h
//  BMITime
//
//  Created by Jamal Kharrat on 4/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //two instance vvariables
    int weightInKilos;
    float heightInMeters;
}
@property float heightInMeters;
@property int weightInKilos;

-(float)bodyMassIndex;




@end
