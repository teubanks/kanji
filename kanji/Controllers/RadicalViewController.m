//
//  RadicalViewController.m
//  kanji
//
//  Created by Tracey Eubanks on 11/5/13.
//
//

#import "RadicalViewController.h"

@interface RadicalViewController ()
-(void)configureView;
@end

@implementation RadicalViewController

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
    self.englishLabel.text = [[self.detailItem valueForKey:@"english"] description];
    self.characterLabel.text = [[self.detailItem valueForKey:@"character"] description];
    self.hiraganaLabel.text = [[self.detailItem valueForKey:@"hiragana"] description];
    self.strokeCount.text = [[self.detailItem valueForKey:@"strokeCount"] description];
    
  }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
	// Do any additional setup after loading the view.
}
@end
