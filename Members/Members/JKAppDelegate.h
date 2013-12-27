//
//  JKAppDelegate.h
//  Members
//
//  Created by Jamal Kharrat on 6/14/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JKViewController;

@interface JKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) JKViewController *viewController;

@property (strong,nonatomic) NSMutableArray *members;

@end
