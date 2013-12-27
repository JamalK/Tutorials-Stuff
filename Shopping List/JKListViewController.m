//
//  JKListViewController.m
//  Shopping List
//
//  Created by Jamal Kharrat on 5/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import "JKListViewController.h"
#import "JKAddItemViewController.h"

#import "JKItem.h"
@interface JKListViewController()

//Instance of an array
@property NSMutableArray *items;


@end


@implementation JKListViewController
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(void)controller:(JKAddItemViewController*)controller didSaveItemWithName:(NSString*)name andPrice:(float)price
{
    JKItem *item =[JKItem createItemWithName:name andPrice:price];
    //add item to the data source
    [self.items addObject:item];
    //addrow to the table
    NSIndexPath *newIndexpath = [NSIndexPath indexPathForItem:([self.items count]-1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[newIndexpath] withRowAnimation:UITableViewRowAnimationNone];
    
    [self saveItems];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self items]count];
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell Identifier"
    ;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier ];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //fetch item
    JKItem *item = [self.items objectAtIndex:[indexPath row]];
    //configure Cell
    [cell.textLabel setText:[item name]];
    return cell;
    
}

-(id)initWithStyle:(UITableViewStyle)style
{
    self=[super initWithStyle:style];
    if (self)
    {
        self.title=@"items";
        
        [self loadItems];
        
    }
    return self;
}

-(void)loadItems
{
    NSString *filePath = [self pathForItems];
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
    {
        self.items =[NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    }
    else
    {
        self.items = [NSMutableArray array];
    }
    
}
-(NSString*)pathForItems
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documents = [paths lastObject];
    return [documents stringByAppendingPathComponent:@"items.plist"];
    
    
}
-(void)saveItems
{
//    NSString *filePath= [self pathForItems];
    [NSKeyedArchiver archiveRootObject:self.items toFile:[self pathForItems]];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItem:)];
    NSLog(@"items > %@",self.items);
    
}

-(void)addItem:(id)sender{
    NSLog(@"Button was tapped");
    JKAddItemViewController *addItemViewController = [[JKAddItemViewController alloc]initWithNibName:@"JKAddItemViewController" bundle:nil];
    [addItemViewController setDelegate:self];
    [self presentViewController:addItemViewController animated:YES completion:nil];
}


@end
