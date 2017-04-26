//sHash
struct sHash{
    import static String Remove(String hash,  String key);
    import static String Get(String hash,  String key);
    import static String Set(String hash,  String key1, String value1, 
          String key2 = 0,  String value2 = 0,  
          String key3 = 0, String value3 = 0,  
          String key4 = 0, String value4 = 0);
    import static String SetInt(String hash,  String key, int value);
    import static int GetInt(String hash,  String key);
    import static String SetFloat(String hash,  String key, float value);
    import static float GetFloat(String hash,  String key);
};
struct sHash_Global{
  import static String get( String GetKey);
  import static int get_Int( String GetKey);
  import static void set( String GetKey, String getValue);
  import static void set_Int( String GetKey, int getValue);
};

import String sHashRemove(this String*,  String key);
import String sHashGet(this String*,  String key);
import String sHashSet(this String*,  String key1 = 0, String value1 = 0, 
      String key2 = 0,  String value2 = 0,   String key3 = 0, String value3 = 0, 
      String key4 = 0, String value4 = 0  );
import String sHashSetInt(this String*,  String key, int value);
import int sHashGetInt(this String*,  String key);
import float sHashGetFloat(this String*,  String key);
import String sHashSetFloat(this String*,  String key, float value);
