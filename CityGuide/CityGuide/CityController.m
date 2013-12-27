//
//  CityController.m
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "CityController.h"
#import "JKAppDelegate.h"
#import "City.h"

@interface CityController ()

@end

@implementation CityController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    JKAppDelegate *delegate = (JKAppDelegate*)[[UIApplication sharedApplication]delegate];
    City *thisCity = [delegate.cities objectAtIndex:index.row];
    self.title=thisCity.cityName;
    
    descriptionView.text=thisCity.cityDescription;
    descriptionView.editable=NO;
    pictureView.image=thisCity.cityPicture;
    
    UIImage *image = thisCity.cityPicture;
    if (image==nil)
    {
        image=[UIImage imageNamed:@"Default.jpg"];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(id)initWithIndexPath:(NSIndexPath *)indexPath
{
    if ((self= [super init]))
    {
        index=indexPath;
    }
    return self;
}

@end
