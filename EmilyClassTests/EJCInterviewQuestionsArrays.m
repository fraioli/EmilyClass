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
    
    strncpy(str, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 150);
    sstr = "a120";
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

static void matrixToString(int **matrix, int size, char *str) {
    int i, j;
    size--;

    for (i = 0; i < size; i++) {
        for (j = 0; j < size; j++) {
            *str++ = '0' + matrix[i][j];
            *str++ = ' ';
        }
        *str++ = '0' + matrix[i][j];
        *str++ = '\n';
    }
    
    j = 0;
    for (; j < size; j++) {
        *str++ = '0' + matrix[i][j];
        *str++ = ' ';
    }
    *str++ = '0' + matrix[i][j];
    *str = '\0';
}

- (void)testRotateNinetyDegrees {
    int size = 5;
    char omstr[size * size * 3];
    char nmstr[size * size * 3];
    char cmstr[size * size * 3];
    int *matrix[size];
    int *cmatrix[size];
    int values[size * size];
    int cvalues[size * size];
    for (int i = 0; i < size; i++) {
        matrix[i] = values + i * size;
        cmatrix[i] = cvalues + i * size;
    }
    
    matrix[0][0] = 1;
    size = 1;
    matrixToString(matrix, size, omstr);
    rotateNinetyDegrees(matrix, size);
    matrixToString(matrix, size, nmstr);
    cmatrix[0][0] = 1;
    matrixToString(cmatrix, size, cmstr);
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            if (matrix[i][j] != cmatrix[i][j]) {
                XCTFail(@"Rotation of\n%s\n should be \n%s\n but was \n%s", omstr, cmstr, nmstr);
                break;
            }
        }
    }
    
    matrix[0][0] = 1;
    matrix[0][1] = 2;
    matrix[1][0] = 3;
    matrix[1][1] = 4;
    size = 2;
    matrixToString(matrix, size, omstr);
    rotateNinetyDegrees(matrix, size);
    matrixToString(matrix, size, nmstr);
    cmatrix[0][0] = 3;
    cmatrix[0][1] = 1;
    cmatrix[1][0] = 4;
    cmatrix[1][1] = 2;
    matrixToString(cmatrix, size, cmstr);
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            if (matrix[i][j] != cmatrix[i][j]) {
                XCTFail(@"Rotation of\n%s\n should be \n%s\n but was \n%s", omstr, cmstr, nmstr);
                i = size;
                break;
            }
        }
    }

    matrix[0][0] = 1;
    matrix[0][1] = 2;
    matrix[0][2] = 3;
    matrix[1][0] = 4;
    matrix[1][1] = 5;
    matrix[1][2] = 6;
    matrix[2][0] = 7;
    matrix[2][1] = 8;
    matrix[2][2] = 9;
    size = 3;
    matrixToString(matrix, size, omstr);
    rotateNinetyDegrees(matrix, size);
    matrixToString(matrix, size, nmstr);
    cmatrix[0][0] = 7;
    cmatrix[0][1] = 4;
    cmatrix[0][2] = 1;
    cmatrix[1][0] = 8;
    cmatrix[1][1] = 5;
    cmatrix[1][2] = 2;
    cmatrix[2][0] = 9;
    cmatrix[2][1] = 6;
    cmatrix[2][2] = 3;
    matrixToString(cmatrix, size, cmstr);
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            if (matrix[i][j] != cmatrix[i][j]) {
                XCTFail(@"Rotation of\n%s\n should be \n%s\n but was \n%s", omstr, cmstr, nmstr);
                i = size;
                break;
            }
        }
    }
}

@end
