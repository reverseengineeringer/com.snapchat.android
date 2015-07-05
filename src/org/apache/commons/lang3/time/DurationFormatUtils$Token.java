package org.apache.commons.lang3.time;

import org.apache.commons.lang3.StringUtils;

class DurationFormatUtils$Token
{
  private int count;
  private final Object value;
  
  DurationFormatUtils$Token(Object paramObject)
  {
    value = paramObject;
    count = 1;
  }
  
  DurationFormatUtils$Token(Object paramObject, int paramInt)
  {
    value = paramObject;
    count = paramInt;
  }
  
  static boolean containsTokenWithValue(Token[] paramArrayOfToken, Object paramObject)
  {
    boolean bool2 = false;
    int j = paramArrayOfToken.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramArrayOfToken[i].getValue() == paramObject) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Token))
    {
      paramObject = (Token)paramObject;
      if (value.getClass() == value.getClass()) {
        break label31;
      }
    }
    label31:
    do
    {
      do
      {
        return false;
      } while (count != count);
      if ((value instanceof StringBuilder)) {
        return value.toString().equals(value.toString());
      }
      if ((value instanceof Number)) {
        return value.equals(value);
      }
    } while (value != value);
    return true;
  }
  
  int getCount()
  {
    return count;
  }
  
  Object getValue()
  {
    return value;
  }
  
  public int hashCode()
  {
    return value.hashCode();
  }
  
  void increment()
  {
    count += 1;
  }
  
  public String toString()
  {
    return StringUtils.repeat(value.toString(), count);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.DurationFormatUtils.Token
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */