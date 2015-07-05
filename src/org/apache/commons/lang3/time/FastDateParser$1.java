package org.apache.commons.lang3.time;

import java.util.Calendar;

final class FastDateParser$1
  extends FastDateParser.NumberStrategy
{
  FastDateParser$1(int paramInt)
  {
    super(paramInt);
  }
  
  final void setCalendar(FastDateParser paramFastDateParser, Calendar paramCalendar, String paramString)
  {
    int j = Integer.parseInt(paramString);
    int i = j;
    if (j < 100) {
      i = FastDateParser.access$300(paramFastDateParser, j);
    }
    paramCalendar.set(1, i);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateParser.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */