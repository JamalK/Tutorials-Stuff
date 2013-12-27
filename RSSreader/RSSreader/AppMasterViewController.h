//
//  AppMasterViewController.h
//  RSSreader
//
//  Created by Jamal Kharrat on 5/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppMasterViewController : UITableViewController<NSXMLParserDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
