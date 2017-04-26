# AdventureGameStudio_sHash

A dictionary library for AGS that stores data in strings.

Also included: sList. A list library that allows lists to be stored as strings. 

Both of these can be nested ( put a sHash in a sHash )

To use, just download and import sHash.scm and sList.scm to Adventure Game Studio. 

( tested on AGS 3.3.0 )

# List of commands in sHash:
sHashRemove(this String*,  String key); 

String sHashGet(this String*,  String key);

import String sHashSetInt(this String*,  String key, int value);

import int sHashGetInt(this String*,  String key);

import float sHashGetFloat(this String*,  String key);

import String sHashSetFloat(this String*,  String key, float value);

import String sHashSet(this String*,  String key1 = 0, String value1 = 0, 

      String key2 = 0,  String value2 = 0,   String key3 = 0, String value3 = 0, 
      
      String key4 = 0, String value4 = 0  );
      
------ This one is for adding more than one  value to the dictionary

# List of commands in sList:
import int sListGetLength(  this String*,  String listName);

import String sListInsertItem(this String*,  String listName, String item,  int index);

import String sListJoinLists(this String*, String listName, 

    String listToJoin, String listToJoinName,  int index);
    
import String sListRemoveItems(  this String*,  String listName, int index,  int numberOfItems);

import String sListGetItem(this String*,  String listName,  int index);

import String sListGetSubList(this String*,  String listName,  int indexStart, int length);

import String sListShuffle(this String*, String listName);

import String sListReverse(this String*, String listName);

import String sListMakeFromSplitString(this String*,  String SplitBy, String returnSListName );

import String sListAddItem(this String*,  String listName, 

  String item1, String item2=0, String item3=0, String item4=0, String item5=0);
  
------ This one is for adding multiple list items
 
 # known issues:
 
 Nested hashtables or lists can't contain keys (for lists its' name) that are the same as the parent hashtable (it will grab the name from the parent hashtable)
