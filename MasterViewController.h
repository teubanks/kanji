//
//  MasterViewController.h
//  kanji
//
//  Created by MoneyDesktop on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
- (NSArray *)tableCells;
@end
