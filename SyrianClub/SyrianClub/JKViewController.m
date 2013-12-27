//
//  JKViewController.m
//  SyrianClub
//
//  Created by Jamal Kharrat on 5/27/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"
#import "SimpleTableCell.h"

@interface JKViewController ()

@end

@implementation JKViewController

#pragma mark -
#pragma mark synthizer
@synthesize table,names,photos,titles;



- (void)viewDidLoad
{
    NSArray *namesArray = [[NSArray alloc]initWithObjects:@"Raed Tawil",@"Marcelle Hana",@"Bashar Esabr",@"Muzer Awad",@"Mohammad Alaliwi",@"Abdulrhman Arnaout",@"Jamal Kharrat",@"Nour Daoud", nil];
    
    NSArray *titleArray = [[NSArray alloc]initWithObjects:@"President",@"Vice President",@"Secretary",@"Events Coordinator",@"WebMaster",@"Treasurer",@"Publicity Manager",@"Professional Assistant", nil] ;
   
    
    UIImage *raed = [UIImage imageNamed:@"raed.jpg"];
    UIImage *marce = [UIImage imageNamed:@"marcelle.jpg"];
    UIImage *bash = [UIImage imageNamed:@"bashar.jpg"];
    UIImage *munzer =[UIImage imageNamed:@"munzer.jpg"];
    UIImage *mhd = [UIImage imageNamed:@"mhd.jpg"];
    UIImage *abd = [UIImage imageNamed:@"abd.jpg"];
    UIImage *jamal =[UIImage imageNamed:@"jamal.jpg"];
    UIImage *nour = [UIImage imageNamed:@"nour.jpg"];
    
    NSArray *picArray = [[NSArray alloc]initWithObjects:raed,marce,bash,munzer,mhd,abd,jamal,nour, nil];
    
    
    
    names=namesArray;
    photos=picArray;
    titles=titleArray;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark data source protocol methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return  [names count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    NSUInteger row = [indexPath row];
    
    
    //configure cell
    

    cell.name.text= [names objectAtIndex:row];
    cell.image.image=[photos objectAtIndex:row];
    cell.description.text=[titles objectAtIndex:row];
    
    
    return cell;
//}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString* CellIdentifier = @"CellIdentifier";
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    if (cell==nil) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
//    }
//NSUInteger row = [indexPath row];
//
//// configure cells
//cell.textLabel.text=[names objectAtIndex:row];
//cell.imageView.image=[photos objectAtIndex:row];
//cell.detailTextLabel.text=[titles objectAtIndex:row];

//return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 71;
}
#pragma mark -
#pragma mark delegate Methods

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Syrian Club Board Members";
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:[NSString stringWithFormat:[names objectAtIndex:indexPath.row]] message:@"Nothing" delegate:nil cancelButtonTitle:@"Yes I Did" otherButtonTitles:nil];
    [alert show];
}

@end
