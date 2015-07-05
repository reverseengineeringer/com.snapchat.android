package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateParser$NumberStrategy
  extends FastDateParser.Strategy
{
  private final int field;
  
  FastDateParser$NumberStrategy(int paramInt)
  {
    super(null);
    field = paramInt;
  }
  
  boolean addRegex(FastDateParser paramFastDateParser, StringBuilder paramStringBuilder)
  {
    if (paramFastDateParser.isNextNumber()) {
      paramStringBuilder.append("(\\p{Nd}{").append(paramFastDateParser.getFieldWidth()).append("}+)");
    }
    for (;;)
    {
      return true;
      paramStringBuilder.append("(\\p{Nd}++)");
    }
  }
  
  boolean isNumber()
  {
    return true;
  }
  
  int modify(int paramInt)
  {
    return paramInt;
  }
  
  void setCalendar(FastDateParser paramFastDateParser, Calendar paramCalendar, String paramString)
  {
    paramCalendar.set(field, modify(Integer.parseInt(paramString)));
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateParser.NumberStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */