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

NSString *kanjiCellID = @"KanjiCell";
NSString *radicalCellID = @"RadicalCell";

@implementation DataSource
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(section == 1){
        return [Kanji numberOfKanjisInContext:self.managedObjectContext];
    } else {
        return [Radical numberOfRadicalsInContext:self.managedObjectContext];
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 1){
        KanjiCell *cell = (KanjiCell*)[collectionView dequeueReusableCellWithReuseIdentifier:kanjiCellID forIndexPath:indexPath];
        return cell;
    } else {
        RadicalCell *cell = (RadicalCell*)[collectionView dequeueReusableCellWithReuseIdentifier:radicalCellID forIndexPath:indexPath];
        return cell;
    }
}
@end
