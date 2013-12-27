//
//  JKViewController.m
//  Magical Notes
//
//  Created by Jamal Kharrat on 8/6/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"
#import "Note.h"

@interface JKViewController ()

@end

@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//Setup View
    [self setupView];
}

-(void)setupView
{
    //Creating an Edit Button
    UIBarButtonItem *editButtton = [[UIBarButtonItem alloc]initWithTitle:@"Edit"
                                                                   style:UIBarButtonItemStyleBordered
                                                                  target:self
                                                                  action:@selector(editNotes:)];
    self.navigationItem.leftBarButtonItem=editButtton;
    //Creating an add button
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]initWithTitle:@"Add"
                                                                 style:UIBarButtonItemStyleBordered
                                                                target:self
                                                                action:@selector(addNote:)];
    self.navigationItem.rightBarButtonItem=addButton;
    
    //Fetch Notes
    [self fetchNotes];
    
    
}

-(void)editNotes:(id)sender
{
    [self.tableView setEditing:![self.tableView isEditing]animated:YES];
    
}

-(void)addNotes:(id)sender
{
    
}

-(void)fetchNotes
{
    //Fetching notes using Magical Record
//    self.notes=[NSMutableArray arrayWithArray:[Note findAll]];
    self.notes=[NSMutableArray arrayWithArray:[Note findAllSortedBy:@"date" ascending:YES]];
    
}


#pragma mark - UITableView Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.notes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        //configure cell
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    //Fetch Note
    Note *note = [self.notes objectAtIndex:[indexPath row]];
    //Configure Cell
    [cell.textLabel setText:[note title]];
    [cell.detailTextLabel setText:[note keywords]];
    return cell;
    
    
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle==UITableViewCellEditingStyleDelete)
    {
        
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
