//
//  RadicalViewController.h
//  kanji
//
//  Created by Tracey Eubanks on 11/5/13.
//
//

#import <UIKit/UIKit.h>

@interface RadicalViewController : UIViewController
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *englishLabel;
@property (weak, nonatomic) IBOutlet UILabel *characterLabel;
@property (weak, nonatomic) IBOutlet UILabel *hiraganaLabel;
@property (weak, nonatomic) IBOutlet UILabel *strokeCount;

@end
