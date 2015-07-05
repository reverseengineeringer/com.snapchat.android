package org.apache.http.util;

public final class TextUtils
{
  public static boolean isBlank(CharSequence paramCharSequence)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramCharSequence == null)
    {
      bool1 = true;
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramCharSequence.length()) {
        break label44;
      }
      bool1 = bool2;
      if (!Character.isWhitespace(paramCharSequence.charAt(i))) {
        break;
      }
      i += 1;
    }
    label44:
    return true;
  }
  
  public static boolean isEmpty(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    while (paramCharSequence.length() == 0) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.util.TextUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */