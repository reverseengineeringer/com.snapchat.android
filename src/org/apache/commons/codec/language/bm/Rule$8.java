package org.apache.commons.codec.language.bm;

final class Rule$8
  implements Rule.RPattern
{
  Rule$8(String paramString, boolean paramBoolean) {}
  
  public final boolean isMatch(CharSequence paramCharSequence)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramCharSequence.length() > 0)
    {
      bool1 = bool2;
      if (Rule.access$300(val$bContent, paramCharSequence.charAt(0)) == val$shouldMatch) {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */