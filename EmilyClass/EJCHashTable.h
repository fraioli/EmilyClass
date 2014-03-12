//
//  EJCHashTable.h
//  EmilyClass
//
//  Created by Nick Fraioli on 3/9/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#ifndef EmilyClass_EJCHashTable_h
#define EmilyClass_EJCHashTable_h

/*
 EJCHashTableRef
    @abstract The opaque pointer to a EJCHashTable. This reference should only be used when passing into the EJCHashTable family of functions.
 */
typedef const void * EJCHashTableRef;

/*
 EJCHashTableNew()
    @abstract The designated initializer for EJCHashTable.
    @return A pointer to a newly allocated EJCHashTable. The memory allocated by EJCHashTableNew() must be freed by a corresponding call to EJCHashTableFree().
 */
EJCHashTableRef EJCHashTableNew();

/*
 EJCHashTableFree()
    @abstract The designated deallocator for EJCHashTable.
    @parameter hashTableRef A EJCHashTableRef that was initialized with EJCHashTableNew() and has not yet been freed with EJCHashTableFree().
    @runtime O(n)
 */
void EJCHashTableFree(EJCHashTableRef hashTableRef);

/*
 EJCHashTableAdd()
    @abstract Adds a key-value pair to the hash table. Adding the same key twice will overwrite the first value with the second value.
    @parameter hashTableRef A EJCHashTableRef that was initialized with EJCHashTableNew().
    @parameter key A string that can be used as a lookup later using another string that is equal as determined by strcmp().
    @parameter value Any pointer that will correspond to the lookup key.
    @runtime O(1) [amortized]
 */
void EJCHashTableAdd(EJCHashTableRef hashTableRef, char *key, void *value);

/*
 EJCHashTableRemove()
    @abstract Removes a key-value pair from the hash table. Removing a nonexistent key does nothing.
    @parameter hashTableRef A EJCHashTableRef that was initialized with EJCHashTableNew().
    @parameter key A string used as a lookup for a key previously added with EJCHashTableAdd(). The added key that is equal to this key as determined by strcmp() is removed.
    @runtime O(1) [amortized]
 */
void EJCHashTableRemove(EJCHashTableRef hashTableRef, char *key);

/*
 EJCHashTableGetValue()
    @abstract Retrieves the value added for a given key with EJCHashTableAdd().
    @parameter hashTableRef A EJCHashTableRef that was initialized with EJCHashTableNew().
    @parameter key A string used as a lookup for a key previously added with EJCHashTableAdd(). The added key that is equal to this key as determined by strcmp() is used to find the correct key-value pair.
    @return A pointer to the value that corresponds to the supplied key or NULL if the supplied key could not be found.
    @runtime O(1) [amortized]
 */
void * EJCHashTableGetValue(EJCHashTableRef hashTableRef, char *key);

#endif
