package org.apache.commons.lang3.time;

import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

class FastDateParser$TextStrategy
  extends FastDateParser.Strategy
{
  private final int field;
  private final Map<String, Integer> keyValues;
  
  FastDateParser$TextStrategy(int paramInt, Calendar paramCalendar, Locale paramLocale)
  {
    super(null);
    field = paramInt;
    keyValues = FastDateParser.access$200(paramInt, paramCalendar, paramLocale);
  }
  
  boolean addRegex(FastDateParser paramFastDateParser, StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append('(');
    paramFastDateParser = keyValues.keySet().iterator();
    while (paramFastDateParser.hasNext()) {
      FastDateParser.access$100(paramStringBuilder, (String)paramFastDateParser.next(), false).append('|');
    }
    paramStringBuilder.setCharAt(paramStringBuilder.length() - 1, ')');
    return true;
  }
  
  void setCalendar(FastDateParser paramFastDateParser, Calendar paramCalendar, String paramString)
  {
    paramFastDateParser = (Integer)keyValues.get(paramString);
    if (paramFastDateParser == null)
    {
      paramFastDateParser = new StringBuilder(paramString);
      paramFastDateParser.append(" not in (");
      paramCalendar = keyValues.keySet().iterator();
      while (paramCalendar.hasNext()) {
        paramFastDateParser.append((String)paramCalendar.next()).append(' ');
      }
      paramFastDateParser.setCharAt(paramFastDateParser.length() - 1, ')');
      throw new IllegalArgumentException(paramFastDateParser.toString());
    }
    paramCalendar.set(field, paramFastDateParser.intValue());
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateParser.TextStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */