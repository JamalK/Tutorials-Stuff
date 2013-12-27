//
//  JKAppDelegate.m
//  RecipeBook
//
//  Created by Jamal Kharrat on 5/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKAppDelegate.h"
#import "GKLParallaxPicturesViewController.h"

@implementation JKAppDelegate




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    UIImage *navBackgroundImage = [UIImage imageNamed:@"nBar.png"];
    [[UINavigationBar appearance] setBackgroundImage:navBackgroundImage forBarMetrics:UIBarMetricsDefault];
    
    
    
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0], UITextAttributeTextColor,
                                                           [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8],UITextAttributeTextShadowColor,
                                                           [NSValue valueWithUIOffset:UIOffsetMake(0, 1)],
                                                           UITextAttributeTextShadowOffset,
                                                           [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:21.0], UITextAttributeFont, nil]];
    // Override point for customization after application launch.
    
//    UIView *testContentView = [[[UINib nibWithNibName:@"View" bundle:nil] instantiateWithOwner:nil options:nil] objectAtIndex:0];
//    GKLParallaxPicturesViewController *paralaxViewController = [[GKLParallaxPicturesViewController alloc] initWithImages:[NSArray arrayWithObjects:[UIImage imageNamed:@"nBar"], [UIImage imageNamed:@"nBar@2x"], nil] andContentView:testContentView];
//    //	paralaxViewController.parallaxHeight = 150;
//    //	paralaxViewController.contentScrollView.delegate = self;
//    self.viewController = paralaxViewController;
//    self.window.rootViewController = self.viewController;
//    [self.window makeKeyAndVisible];
//    [paralaxViewController addImages:[NSArray arrayWithObjects:[UIImage imageNamed:@"nBar@2x"], [UIImage imageNamed:@"nBar@2x"], nil]];
    
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



@end
