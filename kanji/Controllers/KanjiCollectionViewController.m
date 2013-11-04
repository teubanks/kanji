//
//  KanjiCollectionViewController.m
//  kanji
//
//  Created by Tracey Eubanks on 11/2/13.
//
//

#import "KanjiCollectionViewController.h"
#import "DataSource.h"

@interface KanjiCollectionViewController ()

@end

@implementation KanjiCollectionViewController

-(void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    DataSource *dataSource = (DataSource*)self.collectionView.dataSource;
    [dataSource setManagedObjectContext:managedObjectContext];
}
@end
