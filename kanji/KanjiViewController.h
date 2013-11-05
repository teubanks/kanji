//
//  DetailViewController.h
//  kanji
//
//  Created by MoneyDesktop on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KanjiViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *kanjiLabel;
@property (strong, nonatomic) IBOutlet UILabel *onyomiLabel;
@property (strong, nonatomic) IBOutlet UILabel *kunyomiLabel;
@property (strong, nonatomic) IBOutlet UILabel *englishLabel;

@end
