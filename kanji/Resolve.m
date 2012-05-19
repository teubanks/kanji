//
//  Resolve.m
//  kanji
//
//  Created by MoneyDesktop on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Resolve.h"

@implementation Resolve

  + (NSArray *)parseCSVFile:(NSString *)csvFileName{
    NSString *csvFilePath = [[NSBundle mainBundle] pathForResource:csvFileName ofType:@"csv"];
    NSInputStream *fileContents = [NSInputStream inputStreamWithFileAtPath:csvFilePath];
    [fileContents open];
    
    NSError *jsonError;
    id results = [NSJSONSerialization JSONObjectWithStream:fileContents options:NSJSONReadingMutableContainers error:&jsonError];
    
    return results;
  }
@end
