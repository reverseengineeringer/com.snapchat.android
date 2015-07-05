package org.apache.commons.lang3.text;

final class StrMatcher$TrimMatcher
  extends StrMatcher
{
  public final int isMatch(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramArrayOfChar[paramInt1] <= ' ') {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrMatcher.TrimMatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */