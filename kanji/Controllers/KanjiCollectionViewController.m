//
//  KanjiCollectionViewController.m
//  kanji
//
//  Created by Tracey Eubanks on 11/2/13.
//
//

#import "KanjiCollectionViewController.h"

@interface KanjiCollectionViewController ()

@end

@implementation KanjiCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self.collectionView setDelegate:nil];
        [self.collectionView setDataSource:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(section == 1){
        return 20;
    } else {
        return 10;
    }
}
@end
