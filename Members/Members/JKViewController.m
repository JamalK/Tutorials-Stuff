//
//  JKViewController.m
//  Members
//
//  Created by Jamal Kharrat on 6/14/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"
#import "JKAppDelegate.h"
#import "JKMember.h"

@interface JKViewController ()

@end

@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    JKAppDelegate *delegate = (JKAppDelegate*)[[UIApplication sharedApplication]delegate];
    
    members=delegate.members;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSoureDelegate Methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    JKMember *thisMember= [members objectAtIndex:indexPath.row];
    
    cell.textLabel.text=thisMember.name;
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [members count];
}



@end
