//
//  JKViewController.h
//  RecipeBook
//
//  Created by Jamal Kharrat on 5/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKViewController : UIViewController <UITabBarDelegate,UITableViewDataSource>
@property (nonatomic,strong)IBOutlet UITableView *tableView;
@end
