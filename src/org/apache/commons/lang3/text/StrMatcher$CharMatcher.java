package org.apache.commons.lang3.text;

final class StrMatcher$CharMatcher
  extends StrMatcher
{
  private final char ch;
  
  StrMatcher$CharMatcher(char paramChar)
  {
    ch = paramChar;
  }
  
  public final int isMatch(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    if (ch == paramArrayOfChar[paramInt1]) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrMatcher.CharMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */