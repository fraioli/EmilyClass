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

@end
