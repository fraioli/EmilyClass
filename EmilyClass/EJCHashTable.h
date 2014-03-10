//
//  EJCHashTable.h
//  EmilyClass
//
//  Created by Nick Fraioli on 3/9/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#ifndef EmilyClass_EJCHashTable_h
#define EmilyClass_EJCHashTable_h

typedef const void * EJCHashTableRef;

EJCHashTableRef EJCHashTableNew();
void EJCHashTableFree(EJCHashTableRef hashTable);
void EJCHashTableAdd(EJCHashTableRef hashTable, char *key, void *value);
void EJCHashTableRemove(EJCHashTableRef hashTable, char *key);
void * EJCHashTableGetValue(EJCHashTableRef hashTable, char *key);

#endif
