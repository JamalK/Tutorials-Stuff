//
//  JKViewController.h
//  Members
//
//  Created by Jamal Kharrat on 6/14/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *members ;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
