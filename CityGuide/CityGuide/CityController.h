//
//  CityController.h
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityController : UIViewController
{
    NSIndexPath *index;
    
    IBOutlet UIImageView *pictureView;
    IBOutlet UITextView *descriptionView;
    
    
    
}

-(id)initWithIndexPath:(NSIndexPath *)indexPath;


@end
