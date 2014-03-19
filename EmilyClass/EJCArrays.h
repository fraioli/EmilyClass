//
//  EJCArrays.h
//  EmilyClass
//
//  Created by Nick Fraioli on 3/16/14.
//  Copyright (c) 2014 Curly House Inc. All rights reserved.
//

#ifndef EmilyClass_EJCArrays_h
#define EmilyClass_EJCArrays_h

/* Reverse the string */
void reverseString(char *str);

/* Return 1 if astr is a permutation of bstr or 0 otherwise */
int stringIsPermutationOfString(char *astr, char *bstr);

/* Replace all occurences of ' ' with "%20". Assume the str has enough buffer space at the end to fit the extra characters. The length is the number of characters in the string up to (but not including) the first null character before which the spaces will be that you must replace. */
void replaceSpacesInStringWithPercentTwenty(char *str, int length);

/* Compress the string using the format "<char><num>..." and put it into cstr. For example, "aabccccddd" -> "a2b1c4d3". If the compressed string is not smaller than the original, return the original. Thus, cstr should have space for as many characters as are in str. */
char * compressString(char *str);

#endif
