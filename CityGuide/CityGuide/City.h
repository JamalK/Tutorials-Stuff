//
//  City.h
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (strong,nonatomic) NSString *cityName;
@property (strong,nonatomic) NSString *cityDescription;
@property (strong,nonatomic) UIImage *cityPicture;

@end
