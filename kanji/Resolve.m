//
//  Resolve.m
//  kanji
//
//  Created by MoneyDesktop on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Resolve.h"

@implementation Resolve

  + (NSArray *)parseJSONFile:(NSString *)jsonFileName{
    NSString *jsonFilePath = [[NSBundle mainBundle] pathForResource:jsonFileName ofType:@"json"];
    NSInputStream *fileContents = [NSInputStream inputStreamWithFileAtPath:jsonFilePath];
    [fileContents open];
    
    NSError *jsonError;
    id results = [NSJSONSerialization JSONObjectWithStream:fileContents options:NSJSONReadingMutableContainers error:&jsonError];
    [fileContents close];
    return results;
  }
@end
