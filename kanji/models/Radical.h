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

@property (nonatomic, retain) NSString * character;
@property (nonatomic, retain) NSString * english;
@property (nonatomic, retain) NSString * hiragana;
@property (nonatomic, retain) NSNumber * position;
@property (nonatomic, retain) NSNumber * strokeCount;

+(Radical *)insertNewRadicalWithProperties:(NSDictionary *)properties inManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;
+(NSUInteger)numberOfRadicalsInContext:(NSManagedObjectContext*)managedObjectContext;
+(NSArray*)radicalsInContext:(NSManagedObjectContext*)managedObjectContext;
@end
