package org.apache.commons.lang3.time;

import java.util.Calendar;

abstract class FastDateParser$Strategy
{
  abstract boolean addRegex(FastDateParser paramFastDateParser, StringBuilder paramStringBuilder);
  
  boolean isNumber()
  {
    return false;
  }
  
  void setCalendar(FastDateParser paramFastDateParser, Calendar paramCalendar, String paramString) {}
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateParser.Strategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */