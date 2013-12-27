//
//  JKAppDelegate.m
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKAppDelegate.h"

#import "JKViewController.h"

#import "City.h"

@implementation JKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    City *london = [[City alloc]init];
    london.cityName=@"London";
    london.cityDescription=@"The Capital of the United Kingdom and England.";
    london.cityPicture=[UIImage imageNamed:@"london.jpg"];
    
    
    City *sanFrancisco = [[City alloc]init];
    sanFrancisco.cityName=@"San Francisco";
    sanFrancisco.cityDescription=@"The heart of the San Francisco bay area.";
    sanFrancisco.cityPicture=[UIImage imageNamed:@"san-francisco.jpg"];
    
    
    City *sydney = [[City alloc]init];
    sydney.cityName=@"Sydney";
    sydney.cityDescription=@"The Largest city in Australia.";
    sydney.cityPicture=[UIImage imageNamed:@"sydney.jpg"];
    
    self.cities=[[NSMutableArray alloc]initWithObjects:london,sanFrancisco,sydney, nil];
    
    
    
    
    
    
    self.viewController = [[JKViewController alloc] initWithNibName:@"JKViewController" bundle:nil];
    self.navController=[[UINavigationController alloc]initWithRootViewController:self.viewController];
    self.window.rootViewController = self.navController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
