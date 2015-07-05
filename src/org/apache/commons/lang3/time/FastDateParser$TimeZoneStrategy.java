package org.apache.commons.lang3.time;

import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.SortedMap;
import java.util.TimeZone;
import java.util.TreeMap;

class FastDateParser$TimeZoneStrategy
  extends FastDateParser.Strategy
{
  private static final int ID = 0;
  private static final int LONG_DST = 3;
  private static final int LONG_STD = 1;
  private static final int SHORT_DST = 4;
  private static final int SHORT_STD = 2;
  private final SortedMap<String, TimeZone> tzNames = new TreeMap(String.CASE_INSENSITIVE_ORDER);
  private final String validTimeZoneChars;
  
  FastDateParser$TimeZoneStrategy(Locale paramLocale)
  {
    super(null);
    paramLocale = DateFormatSymbols.getInstance(paramLocale).getZoneStrings();
    int j = paramLocale.length;
    int i = 0;
    while (i < j)
    {
      localIterator = paramLocale[i];
      if (!localIterator[0].startsWith("GMT"))
      {
        TimeZone localTimeZone = TimeZone.getTimeZone(localIterator[0]);
        if (!tzNames.containsKey(localIterator[1])) {
          tzNames.put(localIterator[1], localTimeZone);
        }
        if (!tzNames.containsKey(localIterator[2])) {
          tzNames.put(localIterator[2], localTimeZone);
        }
        if (localTimeZone.useDaylightTime())
        {
          if (!tzNames.containsKey(localIterator[3])) {
            tzNames.put(localIterator[3], localTimeZone);
          }
          if (!tzNames.containsKey(localIterator[4])) {
            tzNames.put(localIterator[4], localTimeZone);
          }
        }
      }
      i += 1;
    }
    paramLocale = new StringBuilder();
    paramLocale.append("(GMT[+\\-]\\d{0,1}\\d{2}|[+\\-]\\d{2}:?\\d{2}|");
    Iterator localIterator = tzNames.keySet().iterator();
    while (localIterator.hasNext()) {
      FastDateParser.access$100(paramLocale, (String)localIterator.next(), false).append('|');
    }
    paramLocale.setCharAt(paramLocale.length() - 1, ')');
    validTimeZoneChars = paramLocale.toString();
  }
  
  boolean addRegex(FastDateParser paramFastDateParser, StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append(validTimeZoneChars);
    return true;
  }
  
  void setCalendar(FastDateParser paramFastDateParser, Calendar paramCalendar, String paramString)
  {
    if ((paramString.charAt(0) == '+') || (paramString.charAt(0) == '-')) {
      paramFastDateParser = TimeZone.getTimeZone("GMT" + paramString);
    }
    TimeZone localTimeZone;
    do
    {
      for (;;)
      {
        paramCalendar.setTimeZone(paramFastDateParser);
        return;
        if (!paramString.startsWith("GMT")) {
          break;
        }
        paramFastDateParser = TimeZone.getTimeZone(paramString);
      }
      localTimeZone = (TimeZone)tzNames.get(paramString);
      paramFastDateParser = localTimeZone;
    } while (localTimeZone != null);
    throw new IllegalArgumentException(paramString + " is not a supported timezone name");
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateParser.TimeZoneStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */