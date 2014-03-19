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

/* Replace all occurences of ' ' with "%20". Assume the str has enough buffer space at the end to fit the extra characters. The length is the number of characters in the string up to (but not including) the first null character before which the spaces will be that you must replace. */
void replaceSpacesInStringWithPercentTwenty(char *str, int length);

#endif
