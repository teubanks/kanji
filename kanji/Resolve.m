//
//  Resolve.m
//  kanji
//
//  Created by Tracey Eubanks on 5/17/12.
//

#import "Resolve.h"

@implementation Resolve

+ (NSArray *)parseJSONFile:(NSString *)jsonFileName{
    NSString *jsonFilePath = [[NSBundle mainBundle] pathForResource:jsonFileName ofType:@"json"];
    NSInputStream *fileContents = [NSInputStream inputStreamWithFileAtPath:jsonFilePath];
    [fileContents open];
    
    NSError *jsonError;
    id results = [NSJSONSerialization JSONObjectWithStream:fileContents options:NSJSONReadingMutableContainers error:&jsonError];
    if(jsonError){
        NSLog(@"error parsing json: %@", [jsonError description]);
    }
    [fileContents close];
    return results;
}
@end
