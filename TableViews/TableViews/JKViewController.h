//
//  JKViewController.h
//  TableViews
//
//  Created by Jamal Kharrat on 5/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *table;
    NSArray *sitesArray;
    NSArray *imagesArray;
    
}

@property (nonatomic,retain)IBOutlet UITableView *table;
@property (nonatomic,retain) NSArray *sitesArray;
@property (nonatomic,retain) NSArray *imagesArray;

@end
