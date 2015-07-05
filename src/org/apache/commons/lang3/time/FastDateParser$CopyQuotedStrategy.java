package org.apache.commons.lang3.time;

class FastDateParser$CopyQuotedStrategy
  extends FastDateParser.Strategy
{
  private final String formatField;
  
  FastDateParser$CopyQuotedStrategy(String paramString)
  {
    super(null);
    formatField = paramString;
  }
  
  boolean addRegex(FastDateParser paramFastDateParser, StringBuilder paramStringBuilder)
  {
    FastDateParser.access$100(paramStringBuilder, formatField, true);
    return false;
  }
  
  boolean isNumber()
  {
    char c2 = formatField.charAt(0);
    char c1 = c2;
    if (c2 == '\'') {
      c1 = formatField.charAt(1);
    }
    return Character.isDigit(c1);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateParser.CopyQuotedStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */