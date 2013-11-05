//
//  KanjiCell.h
//  kanji
//
//  Created by Tracey Eubanks on 11/4/13.
//
//

#import <UIKit/UIKit.h>

@class Kanji;

@interface KanjiCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *kanjiCellLabel;
@property (strong, nonatomic) Kanji *kanjiEntity;
@end
