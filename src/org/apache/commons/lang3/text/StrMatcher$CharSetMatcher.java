package org.apache.commons.lang3.text;

import java.util.Arrays;

final class StrMatcher$CharSetMatcher
  extends StrMatcher
{
  private final char[] chars;
  
  StrMatcher$CharSetMatcher(char[] paramArrayOfChar)
  {
    chars = ((char[])paramArrayOfChar.clone());
    Arrays.sort(chars);
  }
  
  public final int isMatch(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    if (Arrays.binarySearch(chars, paramArrayOfChar[paramInt1]) >= 0) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrMatcher.CharSetMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */