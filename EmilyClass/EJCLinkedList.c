//
//  EJCLinkedList.c
//  EmilyClass
//
//  Created by Nick Fraioli on 3/10/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#include <stdlib.h>
#include "EJCLinkedList.h"

struct EJCLinkedList {
};

EJCLinkedListRef EJCLinkedListNew() {
    return NULL;
}

void EJCLinkedListFree(EJCLinkedListRef linkedListRef) {
    struct EJCLinkedList *linkedList = (struct EJCLinkedList *)linkedListRef;
}

void EJCLinkedListAdd(EJCLinkedListRef linkedListRef, void *value) {
    struct EJCLinkedList *linkedList = (struct EJCLinkedList *)linkedListRef;
}

void EJCLinkedListRemove(EJCLinkedListRef linkedListRef, void *value) {
    struct EJCLinkedList *linkedList = (struct EJCLinkedList *)linkedListRef;
}

EJCLinkedListIteratorRef EJCLinkedListIteratorCopy(EJCLinkedListRef linkedListRef) {
    struct EJCLinkedList *linkedList = (struct EJCLinkedList *)linkedListRef;
    return NULL;
}

void EJCLinkedListIteratorFree(EJCLinkedListIteratorRef linkedListIteratorRef) {
}

void * EJCLinkedListIteratorGetNextValue(EJCLinkedListIteratorRef linkedListIteratorRef) {
    return NULL;
}

