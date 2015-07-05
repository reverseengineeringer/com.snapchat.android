package org.apache.commons.lang3.time;

import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public abstract interface DateParser
{
  public abstract Locale getLocale();
  
  public abstract String getPattern();
  
  public abstract TimeZone getTimeZone();
  
  public abstract Date parse(String paramString);
  
  public abstract Date parse(String paramString, ParsePosition paramParsePosition);
  
  public abstract Object parseObject(String paramString);
  
  public abstract Object parseObject(String paramString, ParsePosition paramParsePosition);
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.DateParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */