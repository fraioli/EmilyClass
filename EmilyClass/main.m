//
//  main.m
//  EmilyClass
//
//  Created by Nick Fraioli on 3/9/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "EJCHashTable.h"

int main(int argc, const char * argv[]) {
    EJCHashTableRef hashTable = EJCHashTableNew();
    EJCHashTableAdd(hashTable, "key1", "value1");
    EJCHashTableAdd(hashTable, "key2", "value2");
    EJCHashTableRemove(hashTable, "key2");
    
    char *value1 = EJCHashTableGetValue(hashTable, "key1");
    assert(value1 != NULL);
    assert(strcmp(value1, "value1") == 0);
    
    char *value2 = EJCHashTableGetValue(hashTable, "key2");
    assert(value2 == NULL);
    
    char *value3 = EJCHashTableGetValue(hashTable, "key3");
    assert(value3 == NULL);

    return 0;
}

