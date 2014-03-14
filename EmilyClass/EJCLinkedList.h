//
//  EJCLinkedList.h
//  EmilyClass
//
//  Created by Nick Fraioli on 3/10/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#ifndef EmilyClass_EJCLinkedList_h
#define EmilyClass_EJCLinkedList_h

/*
 EJCLinkedListRef
    @abstract The opaque pointer to a EJCLinkedList. This reference should only be used when passing into the EJCLinkedList family of functions.
 */
typedef const void * EJCLinkedListRef;

/*
 EJCLinkedListIteratorRef
    @abstract The opaque pointer to a EJCLinkedListIterator. This reference should only be used when passing into the EJCLinkedListIterator family of functions.
 */
typedef const void * EJCLinkedListIteratorRef;

/*
 EJCLinkedListNew()
    @abstract The designated initializer for EJCLinkedList.
    @return A pointer to a newly allocated EJCLinkedList. The memory allocated by EJCLinkedListNew() must be freed by a corresponding call to EJCLinkedListFree().
 */
EJCLinkedListRef EJCLinkedListNew();

/*
 EJCLinkedListFree()
    @abstract The designated deallocator for EJCLinkedList.
    @parameter linkedListRef A EJCLinkedListRef that was initialized with EJCLinkedListNew() and has not yet been freed with EJCLinkedListFree().
    @runtime O(n)
 */
void EJCLinkedListFree(EJCLinkedListRef linkedListRef);

/*
 EJCLinkedListAdd()
    @abstract Adds a value to the end of the linked list. Identical values can be added multiple times.
    @parameter linkedListRef A EJCLinkedListRef that was initialized with EJCLinkedListNew().
    @parameter value The pointer that should be added to be retrieved later.
    @runtime O(1)
 */
void EJCLinkedListAdd(EJCLinkedListRef linkedListRef, void *value);

/*
 EJCLinkedListIteratorCopy()
    @abstract Creates a new EJCLinkedListIterator to be used with iterating the linked list.
    @parameter linkedListRef A EJCLinkedListRef that was initialized with EJCLinkedListNew().
    @return A pointer to a newly allocated EJCLinkedListIterator for the corresponding EJCLinkedListRef. The memory allocated by EJCLinkedListIteratorCopy() must be freed by a corresponding call to EJCLinkedListIteratorFree().
 */
EJCLinkedListIteratorRef EJCLinkedListIteratorCopy(EJCLinkedListRef linkedListRef);

/*
 EJCLinkedListIteratorFree()
    @abstract The designated deallocator for EJCLinkedListIterator.
    @parameter linkedListIteratorRef A EJCLinkedListIteratorRef that was initialized with EJCLinkedListIteratorCopy() and has not yet been freed with EJCLinkedListIteratorFree().
    @runtime O(1)
 */
void EJCLinkedListIteratorFree(EJCLinkedListIteratorRef linkedListIteratorRef);

/*
 EJCLinkedListIteratorGetNextValue()
    @abstract Retrieve the next value from the corresponding EJCLinkedList. If there are no values left to be retrieved from the list, EJCLinkedListIteratorGetNextValue() will return NULL.
    @parameter linkedListIteratorRef A EJCLinkedListIteratorRef that was initialized with EJCLinkedListIteratorCopy().
    @runtime O(1)
 */
void * EJCLinkedListIteratorGetNextValue(EJCLinkedListIteratorRef linkedListIteratorRef);

/*
 EJCLinkedListIteratorRemoveCurrent()
 @abstract Removes a value from the linked list that the supplied iterator points to. Attempting to remove after initializing an iterator or immediately removing a value without calling EJCLinkedListIteratorGetNextValue() removes nothing.
 @parameter linkedListIteratorRef The reference to the linkedListIterator that currently points to the value that you want to remove.
 @runtime O(1)
 */
void EJCLinkedListIteratorRemoveCurrent(EJCLinkedListIteratorRef linkedListIteratorRef);

#endif
