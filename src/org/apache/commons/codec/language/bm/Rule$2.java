package org.apache.commons.codec.language.bm;

final class Rule$2
  extends Rule
{
  private final String loc = val$location;
  private final int myLine = val$cLine;
  
  Rule$2(String paramString1, String paramString2, String paramString3, Rule.PhonemeExpr paramPhonemeExpr, int paramInt, String paramString4)
  {
    super(paramString1, paramString2, paramString3, paramPhonemeExpr);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Rule");
    localStringBuilder.append("{line=").append(myLine);
    localStringBuilder.append(", loc='").append(loc).append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.Rule.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */