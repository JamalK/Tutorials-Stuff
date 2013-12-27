//
//  JKAppDelegate.m
//  Shopping List
//
//  Created by Jamal Kharrat on 5/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKAppDelegate.h"
#import "JKListViewController.h"
#import "JKItem.h"

@implementation JKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self seedItems];
    
    
    
//    //initialize a list view controller---------1
//    
    JKListViewController *listViewController = [[JKListViewController alloc]init];

    
//    //initalize navigation controller--------2

    
    UINavigationController *listNavigationController =[[UINavigationController alloc]initWithRootViewController:listViewController];

    
    
//    //nitalize tab bar controller--------3

    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];

    
    
//    //configure tab controller -----4
    [tabBarController setViewControllers:@[listNavigationController]];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self.window setRootViewController:tabBarController];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
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
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(void)seedItems
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    if (![ud boolForKey:@"JKUserDefaultsSeedItems"])
    {
        //load seed items
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"seed" ofType:@"plist"];
        NSArray *seedItems = [NSArray arrayWithContentsOfFile:filePath];
        //items
        NSMutableArray *items = [[NSMutableArray alloc]init];
        //create list of items
        for (int i=0; i<[seedItems count];i++)
        {
            NSDictionary *seedItem = [seedItems objectAtIndex:i];
            //create item
            JKItem *item = [JKItem createItemWithName:[seedItem objectForKey:@"name"] andPrice:[[seedItem objectForKey:@"price"]floatValue]];
           
            [items addObject:item];
            
            
           
            
    
        }//end for
        
        
        
        NSString *itemsPath = [[self documentsDirectory]stringByAppendingPathComponent:@"items.plist"];
        if ([NSKeyedArchiver archiveRootObject:items toFile:itemsPath])
        {
            [ud setBool:YES forKey:@"JKUserDefaultsSeedItems"];
        }
    }
}
-(NSString*)documentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths lastObject];
}

@end
