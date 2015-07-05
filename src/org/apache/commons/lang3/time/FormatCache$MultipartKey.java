package org.apache.commons.lang3.time;

import java.util.Arrays;

class FormatCache$MultipartKey
{
  private int hashCode;
  private final Object[] keys;
  
  public FormatCache$MultipartKey(Object... paramVarArgs)
  {
    keys = paramVarArgs;
  }
  
  public boolean equals(Object paramObject)
  {
    return Arrays.equals(keys, keys);
  }
  
  public int hashCode()
  {
    int j = 0;
    if (hashCode == 0)
    {
      Object[] arrayOfObject = keys;
      int m = arrayOfObject.length;
      int i = 0;
      while (i < m)
      {
        Object localObject = arrayOfObject[i];
        int k = j;
        if (localObject != null) {
          k = j * 7 + localObject.hashCode();
        }
        i += 1;
        j = k;
      }
      hashCode = j;
    }
    return hashCode;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FormatCache.MultipartKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */