//
//  Resolve.m
//  kanji
//
//  Created by MoneyDesktop on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Resolve.h"
#import "parseCSV.h"

@implementation Resolve

  + (NSArray *)parseCSVFile:(NSString *)csvFileName{
    
    CSVParser *parser = [CSVParser new];
    //get the path to the file in your xcode project's resource path 
    NSString *csvFilePath = [[NSBundle mainBundle] pathForResource:csvFileName ofType:@"csv"];
    [parser openFile:csvFilePath];
    
    NSMutableArray *csvContent = [parser parseFile];
    
    [parser closeFile];
    return csvContent;
  }
@end
