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

@end
