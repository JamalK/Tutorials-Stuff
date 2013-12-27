//
//  SimpleTableCell.h
//  SyrianClub
//
//  Created by Jamal Kharrat on 5/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *name;
@property (nonatomic,weak) IBOutlet UILabel *description;
@property (strong, nonatomic) IBOutlet UIImageView *image;



@end
