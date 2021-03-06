AGSScriptModule        �  // Used for Hashtables ( sHash - String Hash, stored as a string. ) 
String _sHashMakeEncodeKeyStart(String key){//_sHashMakeEncodeKeyStart(String key){
  String a = "<"; a = a.Append(key); return a.Append(">");}
String _sHashMakeEncodedKeyEnd(String key){//_sHashMakeEncodedKeyEnd(String key){
  String a = "</"; a = a.Append(key); return a.Append(">");}


static String sHash::Remove(String hash,  String key){ 
  String encodedKeyStart = _sHashMakeEncodeKeyStart( key);
  String encodedKeyEnd = _sHashMakeEncodedKeyEnd( key);
  int keyIndex = hash.IndexOf( encodedKeyStart);
  if( keyIndex != -1 ){
    String startOfHash = hash.Substring( 0, keyIndex);
    String endOfHash = hash.Substring( keyIndex + encodedKeyStart.Length, hash.Length);
    int keyEndIndex = endOfHash.IndexOf( encodedKeyEnd);
      keyEndIndex = keyEndIndex + encodedKeyEnd.Length;
    hash = startOfHash.Append( endOfHash.Substring( keyEndIndex, endOfHash.Length));
  }
  return hash;
}
String _sHashSet_Single(String hash,  String key, String value){ 
  hash = sHash.Remove(hash,  key);
  String encodedEntry = _sHashMakeEncodeKeyStart(key);
  encodedEntry = encodedEntry.Append( value);
  encodedEntry = encodedEntry.Append( _sHashMakeEncodedKeyEnd( key));
  
  return encodedEntry.Append( hash );
}
static String sHash::Get(String hash,  String key){ 
  String encodedKeyStart = _sHashMakeEncodeKeyStart( key);
  String encodedKeyEnd = _sHashMakeEncodedKeyEnd( key);
  int keyIndex = hash.IndexOf( encodedKeyStart);
  if( keyIndex != -1 ){
    
    String gottenValue = hash.Substring( keyIndex + encodedKeyStart.Length,
      hash.Length - (keyIndex + encodedKeyStart.Length) );
    return gottenValue.Substring(0, gottenValue.IndexOf( encodedKeyEnd));
  }
  return "";
}
//////////////////////////////////////////////////////////////////////////
static String sHash::Set(String hash,  String key1, String value1, 
      String key2,  String value2,  
      String key3, String value3, 
      String key4, String value4 ){
           hash = _sHashSet_Single(hash,  key1, value1); 
           if(key2 == null || value2 == null){ return hash; }
           hash = _sHashSet_Single(hash,  key2, value2); 
          if(key3 == null || value3 == null){ return hash; }
           hash = _sHashSet_Single(hash,  key3, value3); 
          if(key4 == null || value4 == null){ return hash; }
           hash = _sHashSet_Single(hash,  key4, value4); 
           return hash;
      }
      
      
      
static String sHash::SetInt(String hash,  String key, int value){ 
  return sHash.Set(hash,  key, String.Format("%i", value)); }
static int sHash::GetInt(String hash,  String key){
  String value = sHash.Get(hash,  key);
  return value.AsInt;  }
static float sHash::GetFloat(String hash,  String key){
  String value = sHash.Get(hash,  key);
  return value.AsFloat;  }
static String sHash::SetFloat(String hash,  String key, float value){
  return sHash.Set(hash,  key, String.Format("%f", value)); }

////////////////////////////////////////////////////
/////////////////////////////////////
///////////////////////////////////////
String sHashRemove(this String*,  String key){  return sHash.Remove(this,  key);}
String sHashGet(this String*,  String key){ return sHash.Get(this,  key); }
String sHashSet(this String*,  String key1, String value1, 
      String key2,  String value2,   String key3, String value3, 
      String key4, String value4  ){
   return   sHash.Set(this,  key1, value1,  key2, value2, key3, value3,  key4, value4);  }
String sHashSetInt(this String*,  String key, int value){ 
  return sHash.SetInt(this, key,  value); }
int sHashGetInt(this String*,  String key){ return sHash.GetInt(this,  key);  }
float sHashGetFloat(this String*,  String key){ return sHash.GetFloat(this,  key);  }
String sHashSetFloat(this String*,  String key, float value){ 
  return sHash.SetFloat(this,  key, value); }

/////////////////////////////////////////////////////////
///////////GLOBAL SHASH: CAN REMOVE
/////////////////////////////
String _sHash_Global; 
static String sHash_Global:: get( String GetKey){
   if(_sHash_Global == null){_sHash_Global = "";}
  return  sHash.Get(_sHash_Global, GetKey); }
static int sHash_Global:: get_Int( String GetKey){
  if(_sHash_Global == null){_sHash_Global = "";}
  return  sHash.GetInt(_sHash_Global, GetKey);}
static void sHash_Global:: set( String GetKey, String getValue){
  if(_sHash_Global == null){_sHash_Global = "";}
  _sHash_Global =  sHash.Set(_sHash_Global, GetKey,  getValue);}
static void sHash_Global:: set_Int( String GetKey, int getValue){
  if(_sHash_Global == null){_sHash_Global = "";}
  _sHash_Global =  sHash.SetInt(_sHash_Global, GetKey,  getValue);}
  
 �  //sHash
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
 �{�        ej��