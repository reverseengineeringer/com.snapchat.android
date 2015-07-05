package org.apache.commons.lang3;

import java.io.Writer;
import org.apache.commons.lang3.text.translate.CharSequenceTranslator;

class StringEscapeUtils$CsvUnescaper
  extends CharSequenceTranslator
{
  private static final char CSV_DELIMITER = ',';
  private static final char CSV_QUOTE = '"';
  private static final String CSV_QUOTE_STR = "\"";
  private static final char[] CSV_SEARCH_CHARS = { 44, 34, 13, 10 };
  
  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    if (paramInt != 0) {
      throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
    }
    if ((paramCharSequence.charAt(0) != '"') || (paramCharSequence.charAt(paramCharSequence.length() - 1) != '"'))
    {
      paramWriter.write(paramCharSequence.toString());
      return Character.codePointCount(paramCharSequence, 0, paramCharSequence.length());
    }
    String str = paramCharSequence.subSequence(1, paramCharSequence.length() - 1).toString();
    if (StringUtils.containsAny(str, CSV_SEARCH_CHARS)) {
      paramWriter.write(StringUtils.replace(str, CSV_QUOTE_STR + CSV_QUOTE_STR, CSV_QUOTE_STR));
    }
    for (;;)
    {
      return Character.codePointCount(paramCharSequence, 0, paramCharSequence.length());
      paramWriter.write(paramCharSequence.toString());
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.StringEscapeUtils.CsvUnescaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */