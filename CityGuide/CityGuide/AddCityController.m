//
//  AddCityController.m
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "AddCityController.h"
#import "JKAppDelegate.h"
#import "JKViewController.h"
#import "City.h"

@interface AddCityController ()

@end

@implementation AddCityController

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
    // Do any additional setup after loading the view from its nib.
    self.title=@"New City";
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveCity:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)saveCity:(id)sender
{
    JKAppDelegate *delegate = (JKAppDelegate *)[[UIApplication sharedApplication]delegate];
    NSMutableArray *cities = delegate.cities;
    
    UITextField *nameEntry = (UITextField*)[nameCell viewWithTag:777];
    
    UITextView *descriptionEntry = (UITextView *)[descriptionCell viewWithTag:777];
    
    if ([nameEntry.text length] >0)
    {
        City *newCity = [[City alloc]init];
        newCity.cityName=nameEntry.text;
        newCity.cityDescription=descriptionEntry.text;
        newCity.cityPicture=nil;
        [cities addObject:newCity];
        
        JKViewController *viewController = delegate.viewController;
        [viewController.tableView reloadData];
    }
    [delegate.navController popViewControllerAnimated:YES];
}

#pragma mark UITableViewDataSource DMethods
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    if (indexPath.row==0)
    {
        cell=nameCell;
    }
    else
    {
        cell=descriptionCell;
    }
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
#pragma mark UItableViewDelegate Methods

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height;
    if (indexPath.row==0)
    {
        height=44;
    }
else{
    height=440;
}
            return height;
}

@end
