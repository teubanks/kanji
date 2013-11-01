//
//  MasterViewController.m
//  kanji
//
//  Created by MoneyDesktop on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MasterViewController.h"
#import "KanjiViewController.h"
#import "KatakanaViewController.h"

@interface MasterViewController (){
  KanjiViewController    *kanjiViewController;
  KatakanaViewController *katakanaViewController;
}

@end

@implementation MasterViewController
@synthesize managedObjectContext = __managedObjectContext;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

  // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[self tableCells] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
  NSArray *cells = [self tableCells];
  if(cell == nil){
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
  }
    
  NSString *cellName = [cells objectAtIndex:indexPath.row];
  cell.textLabel.text = cellName;
  
  return cell;
}

- (NSArray *)tableCells {
  NSArray *cells = [[NSArray alloc] initWithObjects:@"Kanji", @"Katakana", nil];
  return cells;
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//  NSLog([segue identifier]);
//  if([[segue identifier] isEqualToString:@"showKanji"]){
//    kanjiViewController = (KanjiViewController *)[segue destinationViewController];
//    kanjiViewController.managedObjectContext = self.managedObjectContext;
////    kanjiController.delegate = self;
//  } else if([[segue identifier] isEqualToString:@"showKatakana"]) {
//    katakanaViewController = (KatakanaViewController *)[segue destinationViewController];
//  }
//}

-(void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
  
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row is %i", indexPath.row);
    UIViewController *vc = nil;
    
    if (indexPath.row == 0) {
        vc = [[KanjiViewController alloc] init];
        ((KanjiViewController *)vc).managedObjectContext = [self managedObjectContext];
    } else {
        vc = [[KatakanaViewController alloc] init];
    }
  [self.navigationController pushViewController:vc animated:YES];
}

@end
