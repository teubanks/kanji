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
        return [Kanji numberOfKanjisInContext:self.managedObjectContext];
    } else {
        return [Radical numberOfRadicalsInContext:self.managedObjectContext];
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0){
        KanjiCell *cell = (KanjiCell*)[collectionView dequeueReusableCellWithReuseIdentifier:kanjiCellID forIndexPath:indexPath];
        return cell;
    } else {
        RadicalCell *cell = (RadicalCell*)[collectionView dequeueReusableCellWithReuseIdentifier:radicalCellID forIndexPath:indexPath];
        return cell;
    }
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    HeaderView *sectionHeader = nil;
    if(kind == UICollectionElementKindSectionHeader){
        if(indexPath.section == 0){
            sectionHeader = (HeaderView*)[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:kanjiHeaderID forIndexPath:indexPath];
            [sectionHeader.headerTitleLabel setText:@"JLPT Level 5"];
        } else {
            sectionHeader = (HeaderView*)[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:kanjiHeaderID forIndexPath:indexPath];
            [sectionHeader.headerTitleLabel setText:@"Radicals"];
        }
    }
    return sectionHeader;
}
@end
