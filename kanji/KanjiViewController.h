//
//  DetailViewController.h
//  kanji
//
//  Created by Tracey Eubanks on 5/16/12.
//

#import <UIKit/UIKit.h>

@interface KanjiViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *kanjiLabel;
@property (strong, nonatomic) IBOutlet UILabel *onyomiLabel;
@property (strong, nonatomic) IBOutlet UILabel *kunyomiLabel;
@property (strong, nonatomic) IBOutlet UILabel *englishLabel;

@end
