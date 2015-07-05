package org.apache.commons.lang3.text;

import java.util.Map;

class StrLookup$MapStrLookup<V>
  extends StrLookup<V>
{
  private final Map<String, V> map;
  
  StrLookup$MapStrLookup(Map<String, V> paramMap)
  {
    map = paramMap;
  }
  
  public String lookup(String paramString)
  {
    if (map == null) {}
    do
    {
      return null;
      paramString = map.get(paramString);
    } while (paramString == null);
    return paramString.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrLookup.MapStrLookup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */