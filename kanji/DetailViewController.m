//
//  DetailViewController.m
//  kanji
//
//  Created by MoneyDesktop on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize detailItem = _detailItem;
@synthesize kanjiLabel = _kanjiLabel;
@synthesize onyomiLabel = _onyomiLabel;
@synthesize kunyomiLabel = _kunyomiLabel;
@synthesize englishLabel = _englishLabel;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

  if (self.detailItem) {
    self.kanjiLabel.text = [[self.detailItem valueForKey:@"kanji"] description];
    self.onyomiLabel.text = [[self.detailItem valueForKey:@"onyomi"] description];
    self.kunyomiLabel.text = [[self.detailItem valueForKey:@"kunyomi"] description];
    self.englishLabel.text = [[self.detailItem valueForKey:@"english"] description];
    
  }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
  self.kanjiLabel = nil;
  self.onyomiLabel = nil;
  self.kunyomiLabel = nil;
  self.englishLabel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
