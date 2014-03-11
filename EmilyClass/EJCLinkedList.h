//
//  EJCLinkedList.h
//  EmilyClass
//
//  Created by Nick Fraioli on 3/10/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#ifndef EmilyClass_EJCLinkedList_h
#define EmilyClass_EJCLinkedList_h

typedef const void * EJCLinkedListRef;
typedef const void * EJCLinkedListIteratorRef;

EJCLinkedListRef EJCLinkedListNew();
void EJCLinkedListFree(EJCLinkedListRef linkedListRef);
void EJCLinkedListAdd(EJCLinkedListRef linkedListRef, void *value);
void EJCLinkedListRemove(EJCLinkedListRef linkedListRef, void *value);

EJCLinkedListIteratorRef EJCLinkedListGetIterator(EJCLinkedListRef linkedListRef);
void * EJCLinkedListIteratorGetNextValue(EJCLinkedListIteratorRef linkedListIteratorRef);

#endif
