//
//  DetailViewController.m
//  kanji
//
//  Created by Tracey Eubanks on 5/16/12.
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
        NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:17]};

        NSMutableAttributedString *kunyomiString = [[NSMutableAttributedString alloc] initWithString:[[self.detailItem valueForKey:@"kunyomi"] description] attributes:attributes];
        CGFloat width = 280;
        CGRect labelBounds = [kunyomiString boundingRectWithSize:CGSizeMake(width, 10000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil];
        [self.kunyomiLabel setBounds:labelBounds];
        CGRect kunyomiLabelFrame = self.kunyomiLabel.frame;
        kunyomiLabelFrame.origin.y = kunyomiLabelFrame.origin.y + labelBounds.size.height/3;
        self.kunyomiLabel.frame = kunyomiLabelFrame;

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

//-(void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    NSLog(@"tatakai");
//}

@end
