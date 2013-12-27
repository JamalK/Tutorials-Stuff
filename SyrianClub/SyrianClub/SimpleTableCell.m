//
//  SimpleTableCell.m
//  SyrianClub
//
//  Created by Jamal Kharrat on 5/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

#pragma mark -
#pragma mark -Synthizer

@synthesize name=_name  ,description=_description,image=_image;






- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
