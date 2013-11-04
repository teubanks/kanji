//
//  Radical.h
//  kanji
//
//  Created by Tracey Eubanks on 11/1/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Radical : NSManagedObject

@property (nonatomic, retain) NSNumber * character;
@property (nonatomic, retain) NSString * english;
@property (nonatomic, retain) NSString * hiragana;
@property (nonatomic, retain) NSNumber * position;
@property (nonatomic, retain) NSNumber * strokeCount;

+(NSNumber*)numberOfRadicalsInContext:(NSManagedObjectContext*)managedObjectContext;
@end
