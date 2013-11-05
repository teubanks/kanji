//
//  RadicalCell.h
//  kanji
//
//  Created by Tracey Eubanks on 11/4/13.
//
//

#import <UIKit/UIKit.h>
@class Radical;

@interface RadicalCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *radicalCellLabel;
@property (strong, nonatomic) Radical *radicalEntity;

@end
