//
//  DataSource.m
//  kanji
//
//  Created by Tracey Eubanks on 11/4/13.
//
//

#import "DataSource.h"
#import "Kanji.h"
#import "Radical.h"
#import "KanjiCell.h"
#import "RadicalCell.h"
#import "HeaderView.h"

NSString *kanjiCellID = @"KanjiCell";
NSString *radicalCellID = @"RadicalCell";
NSString *kanjiHeaderID = @"KanjiHeader";
NSString *radicalHeaderID = @"RadicalHeader";

@implementation DataSource
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(section == 0){
        return [Radical numberOfRadicalsInContext:self.managedObjectContext];
    } else {
        return [Kanji numberOfKanjisInContext:self.managedObjectContext];
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0){
        RadicalCell *cell = (RadicalCell*)[collectionView dequeueReusableCellWithReuseIdentifier:radicalCellID forIndexPath:indexPath];
        [cell.radicalCellLabel setText:@"rad"];
        return cell;
    } else {
        KanjiCell *cell = (KanjiCell*)[collectionView dequeueReusableCellWithReuseIdentifier:kanjiCellID forIndexPath:indexPath];
        [cell.kanjiCellLabel setText:@"kanji"];
        return cell;
    }
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    HeaderView *sectionHeader = nil;
    if(kind == UICollectionElementKindSectionHeader){
        sectionHeader = (HeaderView*)[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:kanjiHeaderID forIndexPath:indexPath];
        if(indexPath.section == 0){
            [sectionHeader.headerTitleLabel setText:@"Radicals"];
        } else {
            [sectionHeader.headerTitleLabel setText:@"JLPT Level 5"];
        }
    }
    return sectionHeader;
}
@end
