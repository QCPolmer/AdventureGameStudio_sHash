# AdventureGameStudio_sHash

A dictionary library for AGS that stores data in strings.

Also included: sList. A list library that allows lists to be stored as strings. 

Both of these can be nested ( put a sHash in a sHash )

To use, just download and import sHash.scm and sList.scm to Adventure Game Studio. 

( tested on AGS 3.3.0 )

# List of commands in sHash:
String sHashRemove(this String*,  String key); 

String sHashGet(this String*,  String key);

String sHashSetInt(this String*,  String key, int value);

int sHashGetInt(this String*,  String key);

float sHashGetFloat(this String*,  String key);

String sHashSetFloat(this String*,  String key, float value);

String sHashSet(this String*,  String key1 = 0, String value1 = 0, 

      String key2 = 0,  String value2 = 0,   String key3 = 0, String value3 = 0, 
      
      String key4 = 0, String value4 = 0  );
      
------ This one is for adding more than one  value to the dictionary

# List of commands in sList:
int sListGetLength(  this String*,  String listName);

String sListInsertItem(this String*,  String listName, String item,  int index);

String sListJoinLists(this String*, String listName, 

    String listToJoin, String listToJoinName,  int index);
    
String sListRemoveItems(  this String*,  String listName, int index,  int numberOfItems);

String sListGetItem(this String*,  String listName,  int index);

String sListGetSubList(this String*,  String listName,  int indexStart, int length);

String sListShuffle(this String*, String listName);

String sListReverse(this String*, String listName);

String sListMakeFromSplitString(this String*,  String SplitBy, String returnSListName );
String sListAddItem(this String*,  String listName, 

  String item1, String item2=0, String item3=0, String item4=0, String item5=0);
  
------ This one is for adding multiple list items
 
 # known issues:
 
 Nested hashtables or lists can't contain keys (for lists its' name) that are the same as the parent hashtable (it will grab the name from the parent hashtable)

# Notes:
     
The functions are also accessible from the sHash and sList classes 
EG: sHash.Get
