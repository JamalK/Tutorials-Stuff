//
//  AddCityController.h
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCityController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *tableView;
    IBOutlet UITableViewCell *nameCell;
    IBOutlet UITableViewCell *descriptionCell;
}



@end
