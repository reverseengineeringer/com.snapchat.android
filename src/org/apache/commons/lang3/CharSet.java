package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class CharSet
  implements Serializable
{
  public static final CharSet ASCII_ALPHA;
  public static final CharSet ASCII_ALPHA_LOWER;
  public static final CharSet ASCII_ALPHA_UPPER;
  public static final CharSet ASCII_NUMERIC;
  protected static final Map<String, CharSet> COMMON;
  public static final CharSet EMPTY = new CharSet(new String[] { null });
  private static final long serialVersionUID = 5947847346149275958L;
  private final Set<CharRange> set = Collections.synchronizedSet(new HashSet());
  
  static
  {
    ASCII_ALPHA = new CharSet(new String[] { "a-zA-Z" });
    ASCII_ALPHA_LOWER = new CharSet(new String[] { "a-z" });
    ASCII_ALPHA_UPPER = new CharSet(new String[] { "A-Z" });
    ASCII_NUMERIC = new CharSet(new String[] { "0-9" });
    Map localMap = Collections.synchronizedMap(new HashMap());
    COMMON = localMap;
    localMap.put(null, EMPTY);
    COMMON.put("", EMPTY);
    COMMON.put("a-zA-Z", ASCII_ALPHA);
    COMMON.put("A-Za-z", ASCII_ALPHA);
    COMMON.put("a-z", ASCII_ALPHA_LOWER);
    COMMON.put("A-Z", ASCII_ALPHA_UPPER);
    COMMON.put("0-9", ASCII_NUMERIC);
  }
  
  protected CharSet(String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      add(paramVarArgs[i]);
      i += 1;
    }
  }
  
  public static CharSet getInstance(String... paramVarArgs)
  {
    Object localObject;
    if (paramVarArgs == null) {
      localObject = null;
    }
    CharSet localCharSet;
    do
    {
      return (CharSet)localObject;
      if (paramVarArgs.length != 1) {
        break;
      }
      localCharSet = (CharSet)COMMON.get(paramVarArgs[0]);
      localObject = localCharSet;
    } while (localCharSet != null);
    return new CharSet(paramVarArgs);
  }
  
  protected void add(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      int j = paramString.length();
      int i = 0;
      while (i < j)
      {
        int k = j - i;
        if ((k >= 4) && (paramString.charAt(i) == '^') && (paramString.charAt(i + 2) == '-'))
        {
          set.add(CharRange.isNotIn(paramString.charAt(i + 1), paramString.charAt(i + 3)));
          i += 4;
        }
        else if ((k >= 3) && (paramString.charAt(i + 1) == '-'))
        {
          set.add(CharRange.isIn(paramString.charAt(i), paramString.charAt(i + 2)));
          i += 3;
        }
        else if ((k >= 2) && (paramString.charAt(i) == '^'))
        {
          set.add(CharRange.isNot(paramString.charAt(i + 1)));
          i += 2;
        }
        else
        {
          set.add(CharRange.is(paramString.charAt(i)));
          i += 1;
        }
      }
    }
  }
  
  public boolean contains(char paramChar)
  {
    Iterator localIterator = set.iterator();
    while (localIterator.hasNext()) {
      if (((CharRange)localIterator.next()).contains(paramChar)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof CharSet)) {
      return false;
    }
    paramObject = (CharSet)paramObject;
    return set.equals(set);
  }
  
  CharRange[] getCharRanges()
  {
    return (CharRange[])set.toArray(new CharRange[set.size()]);
  }
  
  public int hashCode()
  {
    return set.hashCode() + 89;
  }
  
  public String toString()
  {
    return set.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.CharSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */