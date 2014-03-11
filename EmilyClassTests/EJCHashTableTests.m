//
//  EJCHashTableTests.m
//  EmilyClass
//
//  Created by Nick Fraioli on 3/9/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "EJCHashTable.h"

@interface EJCHashTableTests : XCTestCase

@end

@implementation EJCHashTableTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCreateAndDestroy {
    EJCHashTableRef hashTable = EJCHashTableNew();
    XCTAssert(hashTable != NULL, @"Failed to create new hash table");
    EJCHashTableFree(hashTable);
}

- (void)testSimpleAddAndRemove {
    EJCHashTableRef hashTable = EJCHashTableNew();
    EJCHashTableAdd(hashTable, "key1", "value1");
    EJCHashTableAdd(hashTable, "key2", "value2");
    EJCHashTableRemove(hashTable, "key2");
    
    char *value1 = EJCHashTableGetValue(hashTable, "key1");
    if (value1 == NULL) {
        XCTFail(@"Could not find value for 'key1'");
    } else {
        XCTAssert(strcmp(value1, "value1") == 0, @"Value for 'key1' should have been 'value1' but was '%s'", value1);
    }
    
    char *value2 = EJCHashTableGetValue(hashTable, "key2");
    XCTAssert(value2 == NULL, @"Value for 'key2' should have been NULL but was '%s'", value2);
    
    char *value3 = EJCHashTableGetValue(hashTable, "key3");
    XCTAssert(value3 == NULL, @"Value for 'key3' should have been NULL but was '%s'", value3);
    
    EJCHashTableFree(hashTable);
}

- (void)testComplexAddAndRemove {
    EJCHashTableRef hashTable = EJCHashTableNew();

    int wordsCount = 10000;
    int wordLength = 10;
    char *words[wordsCount];
    char letters[(wordLength + 1) * wordsCount];
    char *letterPointer = letters;
    
    time_t currentTime;
    time(&currentTime);
    srand((unsigned int)currentTime);
    
    for (int i = 0; i < wordsCount; i++) {
        words[i] = letterPointer;
        
        for (int j = 0; j < wordLength; j++) {
            *letterPointer = (char)(rand() % 26) + 97;
            letterPointer++;
        }
        
        *letterPointer = '\0';
        letterPointer++;
        
        EJCHashTableAdd(hashTable, words[i], words[i]);
    }

    for (int i = 0; i < wordsCount; i++) {
        char word[wordLength + 2];
        for (int j = 0; j < wordLength + 2; j++) {
            word[j] = (char)(rand() % 26) + 97;
        }
        word[wordLength + 1] = '\0';
       
        void *value = EJCHashTableGetValue(hashTable, word);
        if (value != NULL) {
            XCTFail(@"Value for key '%s' should be NULL, but the hash table returned us the same value for the existing key '%s'", word, value);
            break;
        }
    }

    for (int i = 0; i < wordsCount; i++) {
        void *value = EJCHashTableGetValue(hashTable, words[i]);
        if (value == NULL) {
            XCTFail(@"Value for key '%s' was NULL, but it should exist", words[i]);
            break;
        }
    }

    for (int i = 0; i < wordsCount; i++) {
        EJCHashTableRemove(hashTable, words[i]);
        
        void *value = EJCHashTableGetValue(hashTable, words[i]);
        if (value != NULL) {
            XCTFail(@"Value for key '%s' should be NULL after removal, but it was %s", words[i], value);
            break;
        }
    }

    EJCHashTableFree(hashTable);
}

@end
