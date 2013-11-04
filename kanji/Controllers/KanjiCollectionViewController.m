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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        DataSource *dataSource = [[DataSource alloc] init];
        [self.collectionView setDataSource:dataSource];
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

-(void)setManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    DataSource *dataSource = (DataSource*)self.collectionView.dataSource;
    [dataSource setManagedObjectContext:managedObjectContext];
}
@end
