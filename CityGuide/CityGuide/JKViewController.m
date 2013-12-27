//
//  JKViewController.m
//  CityGuide
//
//  Created by Jamal Kharrat on 6/15/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"
#import "City.h"
#import "JKAppDelegate.h"
#import "CityController.h"
#import "AddCityController.h"



@interface JKViewController ()

@end

@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.title=@"City Guide";
	// Do any additional setup after loading the view, typically from a nib.
    JKAppDelegate *delegate = (JKAppDelegate*)[[UIApplication sharedApplication]delegate];
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    cities=delegate.cities;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    if (editing != self.editing)
    {
        [super setEditing:editing animated:animated];
        [self.tableView setEditing:editing animated:animated];
        
        NSMutableArray *indices = [[NSMutableArray alloc]init];
        for (int i=0;i<cities.count;i++)
        {
            [indices addObject:[NSIndexPath indexPathForRow:i inSection:0]];
            
        }
        NSArray *lastIndex=[NSArray arrayWithObject:[NSIndexPath indexPathForRow:cities.count inSection:0]];
        
        if (editing==YES)
        {
            for (int i=0;i<cities.count;i++)
            {
                UITableViewCell *cell=[self.tableView cellForRowAtIndexPath:[indices objectAtIndex:i]];
                [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            }
            [self.tableView insertRowsAtIndexPaths:lastIndex withRowAnimation:UITableViewRowAnimationLeft];
            
        }
        else
        {
            for (int i=0;i<cities.count;i++)
            {
                UITableViewCell *cell=[self.tableView cellForRowAtIndexPath:[indices objectAtIndex:i]];
                [cell setSelectionStyle:UITableViewCellSelectionStyleBlue];
                
            }
            [self.tableView deleteRowsAtIndexPaths:lastIndex withRowAnimation:UITableViewRowAnimationLeft];
        }
        
//        NSArray *indexes =[NSArray arrayWithObject:[NSIndexPath indexPathForRow:cities.count inSection:0]];
//        if (editing==YES)
//            [self.tableView insertRowsAtIndexPaths:indexes withRowAnimation:UITableViewRowAnimationLeft];
//        else
//            [self.tableView deleteRowsAtIndexPaths:indexes withRowAnimation:UITableViewRowAnimationLeft];
    }
   
//    [self.tableView reloadData];
    
}


#pragma mark UITableViewDataSourceMethods\

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithFrame:CGRectZero reuseIdentifier:@"cell"];
        
        
    }
    NSLog(@"indexpath.row = %d, cities.count = %d",indexPath.row,cities.count);
    
    
    if (indexPath.row<cities.count)
    {
        City *thisCity = [cities objectAtIndex:indexPath.row];
        cell.textLabel.text=thisCity.cityName;
        cell.textLabel.textColor=[UIColor blackColor];
        cell.editingAccessoryType= UITableViewCellAccessoryNone ;
        if (self.editing)
        {
            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        }
    }
    else
    {
        cell.textLabel.text=@"Add new City..";
        cell.textLabel.textColor=[UIColor lightGrayColor];
        cell.editingAccessoryType=UITableViewCellAccessoryDisclosureIndicator;
        
    }

    return cell;
}





-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSUInteger count = cities.count;
    if (self.editing)
    {
        count=count+1;
        
    }
    return count;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    JKAppDelegate *delegate = (JKAppDelegate*)[[UIApplication sharedApplication]delegate];
    
    
    if (indexPath.row<cities.count && !self.editing)
    {
        
        CityController *city= [[CityController alloc]initWithIndexPath:indexPath];
        [delegate.navController pushViewController:city animated:YES];
    }
    if (indexPath.row ==cities.count && self.editing)
    {
        AddCityController *addCity = [[AddCityController alloc]init];
        [delegate.navController pushViewController:addCity animated:YES];
        
    }
    
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle==UITableViewCellEditingStyleDelete)
    {
        [cities removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        
    }
}


#pragma mark UITabelViewDelegateMethods
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row< cities.count)
        return UITableViewCellEditingStyleDelete;
    else
        return UITableViewCellEditingStyleInsert;
}



@end
