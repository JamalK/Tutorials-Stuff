//
//  JKViewController.h
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *cities;
}


@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
