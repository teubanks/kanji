//
//  KanjiCollectionViewController.m
//  kanji
//
//  Created by Tracey Eubanks on 11/2/13.
//
//

#import "KanjiCollectionViewController.h"
#import "DataSource.h"
#import "KanjiViewController.h"
#import "Kanji.h"
#import "KanjiCell.h"
#import "RadicalViewController.h"
#import "Radical.h"
#import "RadicalCell.h"
#import "HeaderView.h"
#import "StickyHeaderFlowLayout.h"

@interface KanjiCollectionViewController ()

@end

@implementation KanjiCollectionViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    UINib *headerNib = [UINib nibWithNibName:@"HeaderView" bundle:[NSBundle mainBundle]];
    [self.collectionView registerNib:headerNib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"KanjiHeader"];
    [self.collectionView setAccessibilityLabel:@"kanji collection view"];
    StickyHeaderFlowLayout *flowLayout = (StickyHeaderFlowLayout*)[self.collectionView collectionViewLayout];
    flowLayout.headerReferenceSize = CGSizeMake(300, 50);
}

-(void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    DataSource *dataSource = (DataSource*)self.collectionView.dataSource;
    [dataSource setManagedObjectContext:managedObjectContext];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    if([[segue identifier] isEqualToString:@"KanjiSegue"]){
        Kanji *kanjiEntity = [((KanjiCell*)sender) kanjiEntity];
        KanjiViewController *destinationController = [segue destinationViewController];
        [destinationController setDetailItem:kanjiEntity];
    } else if([[segue identifier] isEqualToString:@"RadicalSegue"]){
        Radical *kanjiEntity = [((RadicalCell*)sender) radicalEntity];
        RadicalViewController *destinationController = [segue destinationViewController];
        [destinationController setDetailItem:kanjiEntity];
    }
}
@end
