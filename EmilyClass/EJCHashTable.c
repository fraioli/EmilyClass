//
//  EJCHashTable.c
//  EmilyClass
//
//  Created by Nick Fraioli on 3/9/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#include <stdlib.h>
#include "EJCHashTable.h"

struct EJCHashTable {
};

EJCHashTableRef EJCHashTableNew() {
    return NULL;
}

void EJCHashTableFree(EJCHashTableRef hashTableRef) {
    struct EJCHashTable *hashTable = (struct EJCHashTable *)hashTableRef;
}

void EJCHashTableAdd(EJCHashTableRef hashTableRef, char *key, void *value) {
    struct EJCHashTable *hashTable = (struct EJCHashTable *)hashTableRef;
}

void EJCHashTableRemove(EJCHashTableRef hashTableRef, char *key) {
    struct EJCHashTable *hashTable = (struct EJCHashTable *)hashTableRef;
}

void * EJCHashTableGetValue(EJCHashTableRef hashTableRef, char *key) {
    struct EJCHashTable *hashTable = (struct EJCHashTable *)hashTableRef;
    return NULL;
}
