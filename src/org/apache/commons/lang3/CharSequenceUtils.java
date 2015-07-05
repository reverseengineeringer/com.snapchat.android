package org.apache.commons.lang3;

public class CharSequenceUtils
{
  static int indexOf(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i;
    if ((paramCharSequence instanceof String))
    {
      i = ((String)paramCharSequence).indexOf(paramInt1, paramInt2);
      return i;
    }
    int j = paramCharSequence.length();
    if (paramInt2 < 0) {
      paramInt2 = 0;
    }
    for (;;)
    {
      if (paramInt2 < j)
      {
        i = paramInt2;
        if (paramCharSequence.charAt(paramInt2) == paramInt1) {
          break;
        }
        paramInt2 += 1;
        continue;
      }
      return -1;
    }
  }
  
  static int indexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    return paramCharSequence1.toString().indexOf(paramCharSequence2.toString(), paramInt);
  }
  
  static int lastIndexOf(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int j = -1;
    int i;
    if ((paramCharSequence instanceof String)) {
      i = ((String)paramCharSequence).lastIndexOf(paramInt1, paramInt2);
    }
    int k;
    do
    {
      return i;
      k = paramCharSequence.length();
      i = j;
    } while (paramInt2 < 0);
    if (paramInt2 >= k) {
      paramInt2 = k - 1;
    }
    for (;;)
    {
      i = j;
      if (paramInt2 < 0) {
        break;
      }
      if (paramCharSequence.charAt(paramInt2) == paramInt1) {
        return paramInt2;
      }
      paramInt2 -= 1;
    }
  }
  
  static int lastIndexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    return paramCharSequence1.toString().lastIndexOf(paramCharSequence2.toString(), paramInt);
  }
  
  static boolean regionMatches(CharSequence paramCharSequence1, boolean paramBoolean, int paramInt1, CharSequence paramCharSequence2, int paramInt2, int paramInt3)
  {
    boolean bool2 = false;
    int j = paramInt1;
    int i = paramInt2;
    int k = paramInt3;
    boolean bool1;
    if ((paramCharSequence1 instanceof String))
    {
      j = paramInt1;
      i = paramInt2;
      k = paramInt3;
      if ((paramCharSequence2 instanceof String))
      {
        bool1 = ((String)paramCharSequence1).regionMatches(paramBoolean, paramInt1, (String)paramCharSequence2, paramInt2, paramInt3);
        return bool1;
        label61:
        k = paramInt2;
        i = paramInt3;
        j = paramInt1;
      }
    }
    for (;;)
    {
      paramInt2 = k - 1;
      if (k > 0)
      {
        paramInt1 = j + 1;
        char c1 = paramCharSequence1.charAt(j);
        paramInt3 = i + 1;
        char c2 = paramCharSequence2.charAt(i);
        if (c1 == c2) {
          break label159;
        }
        bool1 = bool2;
        if (!paramBoolean) {
          break;
        }
        if ((Character.toUpperCase(c1) == Character.toUpperCase(c2)) || (Character.toLowerCase(c1) == Character.toLowerCase(c2))) {
          break label61;
        }
        return false;
      }
      return true;
      label159:
      k = paramInt2;
      j = paramInt1;
      i = paramInt3;
    }
  }
  
  public static CharSequence subSequence(CharSequence paramCharSequence, int paramInt)
  {
    if (paramCharSequence == null) {
      return null;
    }
    return paramCharSequence.subSequence(paramInt, paramCharSequence.length());
  }
  
  static char[] toCharArray(CharSequence paramCharSequence)
  {
    Object localObject;
    if ((paramCharSequence instanceof String))
    {
      localObject = ((String)paramCharSequence).toCharArray();
      return (char[])localObject;
    }
    int j = paramCharSequence.length();
    char[] arrayOfChar = new char[paramCharSequence.length()];
    int i = 0;
    for (;;)
    {
      localObject = arrayOfChar;
      if (i >= j) {
        break;
      }
      arrayOfChar[i] = paramCharSequence.charAt(i);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.CharSequenceUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */