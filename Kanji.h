//
//  Kanji.h
//  kanji
//
//  Created by MoneyDesktop on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
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
+(NSNumber*)numberOfKanjisInContext:(NSManagedObjectContext*)managedObjectContext;
@end
