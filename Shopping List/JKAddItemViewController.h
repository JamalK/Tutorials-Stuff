//
//  JKAddItemViewController.h
//  Shopping List
//
//  Created by Jamal Kharrat on 5/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol JKAddItemViewControllerDelegate;

@interface JKAddItemViewController : UIViewController
@property (weak) id<JKAddItemViewControllerDelegate> delegate;
@property  IBOutlet UITextField *nameTextField;
@property  IBOutlet UITextField *priceTextField;


-(IBAction)cancel:(id)sender;
-(IBAction)save:(id)sender;



@end
@protocol JKAddItemViewControllerDelegate <NSObject>
- (void)controller:(JKAddItemViewController *)controller didSaveItemWithName:(NSString *)name andPrice:(float)price;
@end