//
//  Appliance.h
//  Applianeces
//
//  Created by Jamal Kharrat on 5/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
//    NSString *productName;
//    int voltage;
}
@property (copy, nonatomic) NSString* productName;
@property (nonatomic) int voltage;
// the designated initalizer
-(id) initWithProductName:(NSString*)name;
-(NSString*)description;




@end
