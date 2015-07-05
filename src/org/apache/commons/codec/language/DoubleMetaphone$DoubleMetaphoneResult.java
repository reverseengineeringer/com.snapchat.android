package org.apache.commons.codec.language;

public class DoubleMetaphone$DoubleMetaphoneResult
{
  private final StringBuffer alternate = new StringBuffer(this$0.getMaxCodeLen());
  private final int maxLength;
  private final StringBuffer primary = new StringBuffer(this$0.getMaxCodeLen());
  
  public DoubleMetaphone$DoubleMetaphoneResult(DoubleMetaphone paramDoubleMetaphone, int paramInt)
  {
    maxLength = paramInt;
  }
  
  public void append(char paramChar)
  {
    appendPrimary(paramChar);
    appendAlternate(paramChar);
  }
  
  public void append(char paramChar1, char paramChar2)
  {
    appendPrimary(paramChar1);
    appendAlternate(paramChar2);
  }
  
  public void append(String paramString)
  {
    appendPrimary(paramString);
    appendAlternate(paramString);
  }
  
  public void append(String paramString1, String paramString2)
  {
    appendPrimary(paramString1);
    appendAlternate(paramString2);
  }
  
  public void appendAlternate(char paramChar)
  {
    if (alternate.length() < maxLength) {
      alternate.append(paramChar);
    }
  }
  
  public void appendAlternate(String paramString)
  {
    int i = maxLength - alternate.length();
    if (paramString.length() <= i)
    {
      alternate.append(paramString);
      return;
    }
    alternate.append(paramString.substring(0, i));
  }
  
  public void appendPrimary(char paramChar)
  {
    if (primary.length() < maxLength) {
      primary.append(paramChar);
    }
  }
  
  public void appendPrimary(String paramString)
  {
    int i = maxLength - primary.length();
    if (paramString.length() <= i)
    {
      primary.append(paramString);
      return;
    }
    primary.append(paramString.substring(0, i));
  }
  
  public String getAlternate()
  {
    return alternate.toString();
  }
  
  public String getPrimary()
  {
    return primary.toString();
  }
  
  public boolean isComplete()
  {
    return (primary.length() >= maxLength) && (alternate.length() >= maxLength);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.DoubleMetaphone.DoubleMetaphoneResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */