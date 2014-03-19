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

- (void)teststringIsPermutationOfString {
    char astr[20];
    char bstr[20];
    int is;
    int shouldBe;

    strncpy(astr, "abcdef", 20);
    strncpy(bstr, "fcbade", 20);
    shouldBe = 1;
    is = stringIsPermutationOfString(astr, bstr);
    XCTAssert(is == shouldBe, @"Permutation status of '%s' and '%s' should be %d but was %d", astr, bstr, shouldBe, is);

    strncpy(astr, "aaaa", 20);
    strncpy(bstr, "cc", 20);
    shouldBe = 0;
    is = stringIsPermutationOfString(astr, bstr);
    XCTAssert(is == shouldBe, @"Permutation status of '%s' and '%s' should be %d but was %d", astr, bstr, shouldBe, is);

    strncpy(astr, "", 20);
    strncpy(bstr, "", 20);
    shouldBe = 1;
    is = stringIsPermutationOfString(astr, bstr);
    XCTAssert(is == shouldBe, @"Permutation status of '%s' and '%s' should be %d but was %d", astr, bstr, shouldBe, is);

    strncpy(astr, "aaaabbbbcccc", 20);
    strncpy(bstr, "bacbacbacbac", 20);
    shouldBe = 1;
    is = stringIsPermutationOfString(astr, bstr);
    XCTAssert(is == shouldBe, @"Permutation status of '%s' and '%s' should be %d but was %d", astr, bstr, shouldBe, is);
}

- (void)testReplaceSpacesInStringWithPercentTwenty {
    char str[20];
    char ostr[20];
    char *sstr;
    
    strncpy(str, "NoSpace", 20);
    strncpy(ostr, "NoSpace", 20);
    sstr = "NoSpace";
    replaceSpacesInStringWithPercentTwenty(str, (int)strlen(str));
    XCTAssert(strcmp(str, sstr) == 0, @"Replacement of '%s' should be '%s' but was '%s'", ostr, sstr, str);
    
    strncpy(str, "One Space", 20);
    strncpy(ostr, "One Space", 20);
    sstr = "One%20Space";
    replaceSpacesInStringWithPercentTwenty(str, (int)strlen(str));
    XCTAssert(strcmp(str, sstr) == 0, @"Replacement of '%s' should be '%s' but was '%s'", ostr, sstr, str);

    strncpy(str, "      ", 20);
    strncpy(ostr, "      ", 20);
    sstr = "%20%20%20%20%20%20";
    replaceSpacesInStringWithPercentTwenty(str, (int)strlen(str));
    XCTAssert(strcmp(str, sstr) == 0, @"Replacement of '%s' should be '%s' but was '%s'", ostr, sstr, str);

    strncpy(str, "", 20);
    strncpy(ostr, "", 20);
    sstr = "";
    replaceSpacesInStringWithPercentTwenty(str, (int)strlen(str));
    XCTAssert(strcmp(str, sstr) == 0, @"Replacement of '%s' should be '%s' but was '%s'", ostr, sstr, str);
}

- (void)testCompressString {
    char str[150];
    char *rstr;
    char *sstr;
    
    strncpy(str, "", 150);
    sstr = "";
    rstr = compressString(str);
    if (rstr) {
        XCTAssert(strcmp(rstr, sstr) == 0, @"Compression of '%s' should be '%s' but was '%s'", str, sstr, rstr);
    } else {
        XCTFail(@"String returned from compressString(\"%s\") was NULL", str);
    }
    
    strncpy(str, "aabbaa", 150);
    sstr = "aabbaa";
    rstr = compressString(str);
    if (rstr) {
        XCTAssert(strcmp(rstr, sstr) == 0, @"Compression of '%s' should be '%s' but was '%s'", str, sstr, rstr);
    } else {
        XCTFail(@"String returned from compressString(\"%s\") was NULL", str);
    }
    
    strncpy(str, "aaa", 150);
    sstr = "a3";
    rstr = compressString(str);
    if (rstr) {
        XCTAssert(strcmp(rstr, sstr) == 0, @"Compression of '%s' should be '%s' but was '%s'", str, sstr, rstr);
    } else {
        XCTFail(@"String returned from compressString(\"%s\") was NULL", str);
    }
    
    strncpy(str, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 150);
    sstr = "a121";
    rstr = compressString(str);
    if (rstr) {
        XCTAssert(strcmp(rstr, sstr) == 0, @"Compression of '%s' should be '%s' but was '%s'", str, sstr, rstr);
    } else {
        XCTFail(@"String returned from compressString(\"%s\") was NULL", str);
    }

    strncpy(str, "abcdeeeeeeeeeee", 150);
    sstr = "a1b1c1d1e11";
    rstr = compressString(str);
    if (rstr) {
        XCTAssert(strcmp(rstr, sstr) == 0, @"Compression of '%s' should be '%s' but was '%s'", str, sstr, rstr);
    } else {
        XCTFail(@"String returned from compressString(\"%s\") was NULL", str);
    }

    strncpy(str, "aaaaabcd", 150);
    sstr = "aaaaabcd";
    rstr = compressString(str);
    if (rstr) {
        XCTAssert(strcmp(rstr, sstr) == 0, @"Compression of '%s' should be '%s' but was '%s'", str, sstr, rstr);
    } else {
        XCTFail(@"String returned from compressString(\"%s\") was NULL", str);
    }
}

@end
