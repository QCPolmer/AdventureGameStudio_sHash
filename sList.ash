
struct sList{
  import static int GetLength(  String list,  String listName);
  import static String AddItem(String list,  String listName, 
    String item1, String item2 = 0, String item3 = 0, String item4=0, String item5=0);
  import static String InsertItem(String list,  String listName, String item,  int index);
  import static String JoinLists(String list, String listName, 
      String listToJoin, String listToJoinName,  int index);
  import static String RemoveItems(
        String list,  String listName, int index,  int numberOfItems);
  import static String GetItem(String list,  String listName,  int index);
  import static String GetSubList(String list,  String listName,  int indexStart, int length);
  import static String Shuffle(String list, String listName);
  import static String Reverse(String list, String listName);
  import static int findSubStringNumber( String getString,  String subString,  
    int getSubStrNumber, bool indexAfterString);
  // This is a little much
  import static String MakeWithANewItemForEveryItemAAndItemBTextCombination(
        String listA, String listAName_ReturnsWithThisName, String listB, String listBName);
  import static String MakeFromSplitString(String SplitBy,  String returnSListName, String getString );
};

import int sListGetLength(  this String*,  String listName);
import String sListAddItem(this String*,  String listName, 
  String item1, String item2=0, String item3=0, String item4=0, String item5=0);
import String sListInsertItem(this String*,  String listName, String item,  int index);
import String sListJoinLists(this String*, String listName, 
    String listToJoin, String listToJoinName,  int index);
import String sListRemoveItems(  this String*,  String listName, int index,  int numberOfItems);
import String sListGetItem(this String*,  String listName,  int index);
import String sListGetSubList(this String*,  String listName,  int indexStart, int length);
import String sListShuffle(this String*, String listName);
import String sListReverse(this String*, String listName);
import String sListMakeFromSplitString(this String*,  String SplitBy, String returnSListName );