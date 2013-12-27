//
//  JKViewController.m
//  MagicalNotes
//
//  Created by Jamal Kharrat on 8/20/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKViewController.h"
#import "JKAddViewController.h"
#import "Note.h"

@interface JKViewController ()
{
    NSMutableArray *notesArray;
    NSMutableString *dateString;
    NSDateFormatter *dateFormatter;
}
@end

@implementation JKViewController
//@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    notesArray=[[NSMutableArray alloc]init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationNewPersonAdded:) name:@"newPersonAdded" object:nil];
    
    
    [self refreshData];
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)refreshData
{
    [notesArray removeAllObjects];
    NSArray *allNotes = [Note findAllSortedBy:@"dateCreated" ascending:YES];
    [notesArray addObjectsFromArray:allNotes];
    [self.tableView reloadData];
    
}
#pragma mark  - Notifications
-(void) notificationNewPersonAdded:(NSNotification*)notification
{
    NSLog(@"Added a new note");
    [self refreshData];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"Add"])
    {
        NSLog(@"Seuge identified");
        JKAddViewController *addView =segue.destinationViewController;
        
        addView.noteLabel.text=@"Note";
        
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

       return [notesArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    Note *newNote=[notesArray objectAtIndex:indexPath.row];
    cell.textLabel.text=newNote.noteString;
    
    return cell;
    
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


@end
