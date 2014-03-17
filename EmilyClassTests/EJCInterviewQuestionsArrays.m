//
//  EJCInterviewQuestionsArrays.m
//  EmilyClass
//
//  Created by Nick Fraioli on 3/16/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#include "EJCArrays.h"

@interface EJCInterviewQuestions : XCTestCase

@end

@implementation EJCInterviewQuestions

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testReverseString {
    char str[20];
    char *rstr;
    
    strncpy(str, "EvenString", 20);
    rstr = "gnirtSnevE";
    reverseString(str);
    XCTAssert(strcmp(str, rstr) == 0, @"Reverse of EvenString should be %s but was %s", rstr, str);

    strncpy(str, "OddString", 20);
    rstr = "gnirtSddO";
    reverseString(str);
    XCTAssert(strcmp(str, rstr) == 0, @"Reverse of OddString should be %s but was %s", rstr, str);
}

@end
