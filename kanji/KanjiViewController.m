//
//  DetailViewController.m
//  kanji
//
//  Created by MoneyDesktop on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KanjiViewController.h"

@interface KanjiViewController ()
- (void)configureView;
@end

@implementation KanjiViewController

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
        self.kunyomiLabel.numberOfLines = 3;
        self.englishLabel.text = [[self.detailItem valueForKey:@"english"] description];
        self.englishLabel.numberOfLines = 2;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

@end
