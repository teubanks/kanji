//
//  Kanji.h
//  kanji
//
//  Created by Tracey Eubanks on 5/18/12.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Kanji : NSManagedObject

@property (nonatomic, retain) NSString * english;
@property (nonatomic, retain) NSString * kanji;
@property (nonatomic, retain) NSString * kunyomi;
@property (nonatomic, retain) NSString * onyomi;
@property (nonatomic, retain) NSString * romaji;

+ (Kanji *)insertNewKanjiWithProperties:(NSDictionary *)properties inManagedObjectContext:(NSManagedObjectContext *)managedObjectContext;
+(NSUInteger)numberOfKanjisInContext:(NSManagedObjectContext*)managedObjectContext;
+(NSArray*)kanjisInContext:(NSManagedObjectContext*)managedObjectContext;
@end
