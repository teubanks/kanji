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

}
@end
