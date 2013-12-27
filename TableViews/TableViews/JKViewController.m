//
//  JKViewController.m
//  TableViews
//
//  Created by Jamal Kharrat on 5/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"

@interface JKViewController ()

@end

@implementation JKViewController

#pragma mark - synthesizer;

@synthesize table;
@synthesize imagesArray,sitesArray;

- (void)viewDidLoad
{
    //Loads with a dummy array and assign it to site array
    NSArray *sites = [[NSArray alloc]initWithObjects:@"Active Tuts",@"AE Tuts",@"Psd Tuts",@"Audio Tuts",@"Net Tuts",@"Mobile Tuts",@"Photo tuts",@"Vector Tuts", nil];
    
    UIImage *ae = [UIImage imageNamed:@"ae.png"];
    UIImage *PSD = [UIImage imageNamed:@"psd.png"];
    UIImage *mobile= [UIImage imageNamed:@"mobile.png"];
    UIImage *photo  = [UIImage imageNamed:@"photo.png"];
    UIImage *vector = [UIImage imageNamed:@"vector.png"];
    UIImage *audio= [UIImage imageNamed:@"audio.png"];
    UIImage *active  = [UIImage imageNamed:@"active.png"];
    UIImage *net = [UIImage imageNamed:@"net.png"];

    
    NSArray *images = [[NSArray alloc]initWithObjects:active,ae,PSD,audio,net,mobile,photo,vector,nil];
    
    self.sitesArray=sites;
    self.imagesArray=images;

    
    [super viewDidLoad];
	
}

#pragma mark - memory managment

- (void)didReceiveMemoryWarning
{
    NSLog(@"Memory Warning");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark table View DataSource Methods
//return the number of row s in a section
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [sitesArray count];
    NSLog(@"Number of objects in sites array %i",[sitesArray count]);
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell==nil)
    {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] ;
    }
    
    //configuring the cell
    NSUInteger row = [indexPath row];

    
    cell.textLabel.text=[sitesArray objectAtIndex:row];
    cell.imageView.image=[imagesArray objectAtIndex:row];
    cell.accessoryType  =UITableViewCellAccessoryDetailDisclosureButton;
    cell.detailTextLabel.text = [NSString stringWithFormat:@" this is row %i",row+1];
    
    
               return cell;
}
//return the number of sections in a table View
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

#pragma mark-
#pragma delegate methods

///return the height of each cell
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"psdtuts";
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *myAert = [[UIAlertView alloc] initWithTitle:@"You have tapped" message:[NSString stringWithFormat:@"You jave tapped %@",[sitesArray objectAtIndex:indexPath.row]] delegate:nil cancelButtonTitle:@"Yes I Did" otherButtonTitles:nil];
    
    [myAert show];

}




@end
