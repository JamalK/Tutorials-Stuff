//
//  JKViewController.h
//  SyrianClub
//
//  Created by Jamal Kharrat on 5/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) IBOutlet UITableView *table;
@property (nonatomic,strong) NSArray *names;
@property (nonatomic,strong) NSArray *photos;
@property (nonatomic,strong) NSArray *titles;


@end
