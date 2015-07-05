package org.apache.commons.lang3.text;

final class StrMatcher$StringMatcher
  extends StrMatcher
{
  private final char[] chars;
  
  StrMatcher$StringMatcher(String paramString)
  {
    chars = paramString.toCharArray();
  }
  
  public final int isMatch(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = chars.length;
    if (paramInt1 + i > paramInt3) {
      return 0;
    }
    paramInt2 = 0;
    for (;;)
    {
      if (paramInt2 >= chars.length) {
        break label52;
      }
      if (chars[paramInt2] != paramArrayOfChar[paramInt1]) {
        break;
      }
      paramInt2 += 1;
      paramInt1 += 1;
    }
    label52:
    return i;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrMatcher.StringMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */