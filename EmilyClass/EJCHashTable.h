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
void EJCHashTableFree(EJCHashTableRef hashTableRef);
void EJCHashTableAdd(EJCHashTableRef hashTableRef, char *key, void *value);
void EJCHashTableRemove(EJCHashTableRef hashTableRef, char *key);
void * EJCHashTableGetValue(EJCHashTableRef hashTableRef, char *key);

#endif
