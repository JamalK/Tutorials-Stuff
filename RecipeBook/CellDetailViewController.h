//
//  CellDetailViewController.h
//  RecipeBook
//
//  Created by Jamal Kharrat on 5/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellDetailViewController : UIViewController


@property (nonatomic,strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic,strong) NSString *recipeName;

@end
