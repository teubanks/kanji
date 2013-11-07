//
//  kanjiTests.m
//  kanjiTests
//
//  Created by Tracey Eubanks on 5/16/12.
//

#import "kanjiTests.h"

@implementation kanjiTests

-(void)beforeAll{
    [self scrollToBottom];
    [tester tapViewWithAccessibilityLabel:@"生"];
}

-(void)scrollToBottom{
    // kif framework can't scroll to the bottom. This is very hacky.
    [tester scrollViewWithAccessibilityLabel:@"kanji collection view" byFractionOfSizeHorizontal:0 vertical:-0.99];
    [tester scrollViewWithAccessibilityLabel:@"kanji collection view" byFractionOfSizeHorizontal:0 vertical:-0.99];
    [tester scrollViewWithAccessibilityLabel:@"kanji collection view" byFractionOfSizeHorizontal:0 vertical:-0.99];
}

-(void)testClickOnKanji {
    [tester waitForViewWithAccessibilityLabel:@"english text"];
}

-(void)testKunyomiOnKanjiPage {
    [tester waitForViewWithAccessibilityLabel:@"kunyomi text"];
}

-(void)testOnyomiOnKanjiPage {
    [tester waitForViewWithAccessibilityLabel:@"onyomi text"];
}
@end
