//
//  SimpleTableCell.h
//  SimpleTable
//
//  Created by Jamal Kharrat on 5/19/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell
@property(nonatomic,weak) IBOutlet UILabel *nameLabel;
@property(weak,nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;

@end
