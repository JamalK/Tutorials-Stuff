//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Jamal Kharrat on 5/24/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton    *insertButton;
    NSMutableArray *tasks;
    
}

-(void)addTask:(id)sender;



@property (strong, nonatomic) UIWindow *window;

@end
