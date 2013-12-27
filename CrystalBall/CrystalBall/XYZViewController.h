//
//  XYZViewController.h
//  CrystalBall
//
//  Created by Jamal Kharrat on 1/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
///Users/jamalkharrat/Developer/CrystalBall/CrystalBall/XYZViewController.h

#import <UIKit/UIKit.h>

@interface XYZViewController : UIViewController{
    NSArray *predectionArray;
}
@property (strong, nonatomic) IBOutlet UILabel *outPut;
@property (strong, nonatomic) NSArray *predectionArray;
- (IBAction)buttonPressed:(UIButton *)sender;








@end
