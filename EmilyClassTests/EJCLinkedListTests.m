//
//  EJCLinkedListTests.m
//  EmilyClass
//
//  Created by Nick Fraioli on 3/10/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#include "EJCLinkedList.h"

#define ITERATOR_CHECK(VALUE_SHOULD_BE) \
    value = EJCLinkedListIteratorGetNextValue(iterator); \
    valueShouldBe = VALUE_SHOULD_BE; \
    if (valueShouldBe == NULL) { \
        XCTAssert(value == NULL, @"Value at index %u should be NULL but was '%s'", index, value); \
    } else if (value == NULL) { \
        XCTFail(@"Value at index %u should be '%s' but was NULL", index, valueShouldBe); \
    } else { \
        XCTAssert(strcmp(value, valueShouldBe) == 0, @"Value at index %u should be '%s' but was '%s'", index, valueShouldBe, value); \
    } \
    index++;


@interface EJCLinkedListTests : XCTestCase

@end

@implementation EJCLinkedListTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCreateAndDestroy {
    EJCLinkedListRef linkedList = EJCLinkedListNew();
    XCTAssert(linkedList != NULL, @"Failed to create new linked list");
    EJCLinkedListFree(linkedList);
}

- (void)testAddAndRemove {
    EJCLinkedListRef linkedList = EJCLinkedListNew();

    EJCLinkedListAdd(linkedList, "value1");
    EJCLinkedListAdd(linkedList, "value2");
    EJCLinkedListAdd(linkedList, "value3");
    EJCLinkedListAdd(linkedList, "value4");
    EJCLinkedListAdd(linkedList, "value5");
    EJCLinkedListAdd(linkedList, "value6");
    EJCLinkedListAdd(linkedList, "value7");
    EJCLinkedListAdd(linkedList, "value8");
    EJCLinkedListAdd(linkedList, "value9");
    EJCLinkedListAdd(linkedList, "value10");
    
    EJCLinkedListIteratorRef iterator = EJCLinkedListIteratorCopy(linkedList);
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorRemoveCurrent(iterator); // value1
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorRemoveCurrent(iterator); // value4
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorRemoveCurrent(iterator); // value5
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorRemoveCurrent(iterator); // value8
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorGetNextValue(iterator);
    EJCLinkedListIteratorRemoveCurrent(iterator); // value10
    EJCLinkedListIteratorFree(iterator);
    
    iterator = EJCLinkedListIteratorCopy(linkedList);
    char *value;
    char *valueShouldBe;
    unsigned int index = 0;

    ITERATOR_CHECK("value2")
    ITERATOR_CHECK("value3")
    ITERATOR_CHECK("value6")
    ITERATOR_CHECK("value7")
    ITERATOR_CHECK("value9")
    ITERATOR_CHECK(NULL)
    ITERATOR_CHECK(NULL)
    EJCLinkedListIteratorFree(iterator);

    iterator = EJCLinkedListIteratorCopy(linkedList);
    index = 0;
    ITERATOR_CHECK("value2")
    ITERATOR_CHECK("value3")
    ITERATOR_CHECK("value6")
    ITERATOR_CHECK("value7")
    ITERATOR_CHECK("value9")
    ITERATOR_CHECK(NULL)
    ITERATOR_CHECK(NULL)
    EJCLinkedListIteratorFree(iterator);
    
    EJCLinkedListFree(linkedList);
}

@end
