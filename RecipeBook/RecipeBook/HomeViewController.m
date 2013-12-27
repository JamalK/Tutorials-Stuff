//
//  HomeViewController.m
//  RecipeBook
//
//  Created by Jamal Kharrat on 5/31/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "HomeViewController.h"
#import "GKLParallaxPicturesViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *textContentView = [[UINib nibWithNibName:@"View" bundle:nil] instantiateWithOwner:nil options:nil];
	// Do any additional setup after loading the view.
    NSArray *images = [NSArray arrayWithObjects:[UIImage imageNamed:@"nbar.png"],
                       [UIImage imageNamed:@"nbar@2x.png"],nil];
    
    
    GKLParallaxPicturesViewController *paralaxViewController = [[GKLParallaxPicturesViewController alloc] initWithImages:images andContentView:textContentView];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
