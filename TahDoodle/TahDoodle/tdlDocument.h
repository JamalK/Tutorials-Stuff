//
//  tdlDocument.h
//  TahDoodle
//
//  Created by Jamal Kharrat on 5/25/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface tdlDocument : NSDocument<NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}
-(IBAction)createNewItem:(id)sender;

@end
