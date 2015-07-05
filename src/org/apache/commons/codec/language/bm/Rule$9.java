package org.apache.commons.codec.language.bm;

final class Rule$9
  implements Rule.RPattern
{
  Rule$9(String paramString, boolean paramBoolean) {}
  
  public final boolean isMatch(CharSequence paramCharSequence)
  {
    return (paramCharSequence.length() > 0) && (Rule.access$300(val$bContent, paramCharSequence.charAt(paramCharSequence.length() - 1)) == val$shouldMatch);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */