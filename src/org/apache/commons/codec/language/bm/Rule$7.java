package org.apache.commons.codec.language.bm;

final class Rule$7
  implements Rule.RPattern
{
  Rule$7(String paramString, boolean paramBoolean) {}
  
  public final boolean isMatch(CharSequence paramCharSequence)
  {
    return (paramCharSequence.length() == 1) && (Rule.access$300(val$bContent, paramCharSequence.charAt(0)) == val$shouldMatch);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */