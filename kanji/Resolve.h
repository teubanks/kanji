//
//  Resolve.h
//  kanji
//
//  Created by MoneyDesktop on 5/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Resolve : NSObject
  + (NSArray *)parseCSVFile:(NSString *)csvFileName;

@end
