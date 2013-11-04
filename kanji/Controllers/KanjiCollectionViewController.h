//
//  KanjiCollectionViewController.h
//  kanji
//
//  Created by Tracey Eubanks on 11/2/13.
//
//

#import <UIKit/UIKit.h>

@interface KanjiCollectionViewController : UICollectionViewController
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
-(void)setManagedObjectContext:(NSManagedObjectContext*)managedObjectContext;
@end
