//
//  Radical.m
//  kanji
//
//  Created by Tracey Eubanks on 11/1/13.
//
//

#import "Radical.h"


@implementation Radical

@dynamic character;
@dynamic english;
@dynamic hiragana;
@dynamic position;
@dynamic strokeCount;

+ (Radical *)insertNewRadicalWithProperties:(NSDictionary *)properties inManagedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    Radical *result;

    result = (Radical *) [NSEntityDescription insertNewObjectForEntityForName:@"Radical" inManagedObjectContext:managedObjectContext];
    if (result != nil) {
        result.character       = [[properties objectForKey:@"kanji"] copy];
        result.english     = [[properties objectForKey:@"english"] copy];
        result.position      = [[properties objectForKey:@"position"] copy];
        result.strokeCount     = [[properties objectForKey:@"stroke_count"] copy];
        result.hiragana     = [[properties objectForKey:@"hiragana"] copy];
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

+(NSNumber *)numberOfRadicalsInContext:(NSManagedObjectContext *)managedObjectContext {
    
}
@end
