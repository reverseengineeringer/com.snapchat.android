package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$TwoDigitYearField
  implements FastDatePrinter.NumberRule
{
  static final TwoDigitYearField INSTANCE = new TwoDigitYearField();
  
  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    paramStringBuffer.append((char)(paramInt / 10 + 48));
    paramStringBuffer.append((char)(paramInt % 10 + 48));
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    appendTo(paramStringBuffer, paramCalendar.get(1) % 100);
  }
  
  public int estimateLength()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TwoDigitYearField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */