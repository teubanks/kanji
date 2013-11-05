//
//  Kanji.m
//  kanji
//
//  Created by MoneyDesktop on 5/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Kanji.h"


@implementation Kanji

@dynamic english;
@dynamic kanji;
@dynamic kunyomi;
@dynamic onyomi;
@dynamic romaji;

+ (Kanji *)insertNewKanjiWithProperties:(NSDictionary *)properties inManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    Kanji *     result;
    
    result = (Kanji *) [NSEntityDescription insertNewObjectForEntityForName:@"Kanji" inManagedObjectContext:managedObjectContext];
    if (result != nil) {
        result.kanji       = [[properties objectForKey:@"kanji"] copy];
        result.english     = [[properties objectForKey:@"english"] copy];
        result.onyomi      = [[properties objectForKey:@"onyomi"] copy];
        result.kunyomi     = [[properties objectForKey:@"kunyomi"] copy];
    }
    
    if([managedObjectContext hasChanges]){
        NSError *error;
        [managedObjectContext save:&error];
        if(error){
            NSLog(@"error: %@", [error description]);
        }
    }
    
    return result;
}

+(NSUInteger)numberOfKanjisInContext:(NSManagedObjectContext *)managedObjectContext {
    NSFetchRequest *countRequest = [[NSFetchRequest alloc] init];
    [countRequest setEntity:[NSEntityDescription entityForName:@"Kanji" inManagedObjectContext:managedObjectContext]];
    [countRequest setIncludesSubentities:NO];
    NSError *countError = nil;
    NSUInteger count = [managedObjectContext countForFetchRequest:countRequest error:&countError];
    if(count == NSNotFound)
        return 0;

    return count;
}

+(NSArray *)kanjisInContext:(NSManagedObjectContext*)managedObjectContext{
    NSFetchRequest *allKanjiRequest = [[NSFetchRequest alloc] init];
    [allKanjiRequest setEntity:[NSEntityDescription entityForName:@"Kanji" inManagedObjectContext:managedObjectContext]];
    NSError *fetchError = nil;
    NSArray *allKanjis = [managedObjectContext executeFetchRequest:allKanjiRequest error:&fetchError];
    return allKanjis;
}
@end
