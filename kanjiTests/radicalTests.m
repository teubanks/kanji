//
//  radicalTests.m
//  kanji
//
//  Created by Tracey Eubanks on 11/6/13.
//
//

#import "radicalTests.h"

@implementation radicalTests

-(void)beforeAll{
    [tester waitForViewWithAccessibilityLabel:@"一"];
    [tester tapViewWithAccessibilityLabel:@"一"];
}

-(void)testClickOnRadical {
    [tester waitForViewWithAccessibilityLabel:@"english text"];
}

-(void)testHiraganaOnRadicalPage {
    [tester waitForViewWithAccessibilityLabel:@"hiragana text"];
}

-(void)testStrokeCountOnRadicalPage {
    [tester waitForViewWithAccessibilityLabel:@"stroke count"];
}
@end
