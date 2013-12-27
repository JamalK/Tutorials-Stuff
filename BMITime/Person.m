//
//  Person.m
//  BMITime
//
//  Created by Jamal Kharrat on 4/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize heightInMeters,weightInKilos;

-(void) setHeightinMeters:(float)h
{
    heightInMeters=h;
}
-(void) setWeightinKilos:(int)w
{
    weightInKilos=w;
}
-(float) bodyMassIndex
{
    int height =[self heightInMeters];
    return weightInKilos/(height*height);
}

- (void)addYourselfToArray:(NSMutableArray *)theArray
{
    [theArray addObject:self];
}

@end
