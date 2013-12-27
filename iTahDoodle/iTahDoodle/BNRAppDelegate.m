//
//  BNRAppDelegate.m
//  iTahDoodle
//
//  Created by Jamal Kharrat on 5/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "BNRAppDelegate.h"

NSString *docPath()
{
    NSArray *pathList =NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    
    return [[pathList objectAtIndex:0]stringByAppendingPathComponent:@"data.td"];
}

@implementation BNRAppDelegate

#pragma mark - Application delegate callbacks
#pragma mark - Table View managment

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tasks count];
}
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *c =[taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    if(!c)
        c=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    [[c textLabel] setText:item];
    
    
    return c;
    
    
}

-(void)addTask:(id)sender
{
    NSString *t =[taskField text];
    if ([t isEqualToString:@" "])
        return;
    //add it to our array
    [tasks addObject:t];
    //refresh table so we can see the new item added
    [taskTable reloadData];
    //clear out the text field
    [taskField setText:@""];
    //dismiss the keyboard
    [taskField resignFirstResponder];
}




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //attempt to load an existing to-do datset from an array stored to disk
    NSArray *plist =[NSArray arrayWithContentsOfFile:docPath()];
    if(plist)
        //if there was a dataset available, copy it into our instance varibalbe
        tasks=[plist mutableCopy];
    else
        //otherwise create an empty one to get us started
        tasks=[[NSMutableArray alloc]init];
    
    
//    if ([tasks count]==0)
//    {
//        [tasks addObject:@"kfdff"];
//        [tasks addObject:@"By the camera"];
//        [tasks addObject:@"renew the passport"];
//    }
    
    //Initalizing the frame
    CGRect windowFrame=[[UIScreen mainScreen]bounds];
    UIWindow *theWindpow =[[UIWindow alloc]initWithFrame:windowFrame];
    [self setWindow:theWindpow];
    
    //define frame rectangles of the three UI elements
    
    CGRect tableFrame =CGRectMake(0, 80, 320, 380);
    CGRect fieldFrame =CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame= CGRectMake(228, 40, 72, 31);
    
    
    //create and configure table view
    taskTable =[[UITableView alloc]initWithFrame:tableFrame
                style:UITableViewStylePlain];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [taskTable setDataSource:self];
    
    
    
    
    
    //task field
    
    taskField =[[UITextField alloc]initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"type a task, tap insert"];
    
    //create and configure a recounded rec inset button
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    
    //buttons behave using a target acction
    [insertButton addTarget:self
                     action:@selector(addTask:)
           forControlEvents:UIControlEventTouchUpInside];
    
    //give the button a titel
    [insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    //add our three elements to thewindows
    [[self window] addSubview:taskField];
    [[self window] addSubview:insertButton];
    [[self window] addSubview:taskTable];
    
    //finalize window and put it on the screeen
    [[self window] setBackgroundColor:[UIColor whiteColor]];
    [[self window]makeKeyAndVisible];
    
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
    [tasks writeToFile:docPath() atomically:YES];
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
    [tasks writeToFile:docPath() atomically:YES];
}

@end
