//
//  DataSource.h
//  kanji
//
//  Created by Tracey Eubanks on 11/4/13.
//
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject <UICollectionViewDataSource>
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSArray *prefetchedKanji;
@property (strong, nonatomic) NSArray *prefetchedRadicals;
@end
