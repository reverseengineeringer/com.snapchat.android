package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$TwoDigitMonthField
  implements FastDatePrinter.NumberRule
{
  static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();
  
  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    paramStringBuffer.append((char)(paramInt / 10 + 48));
    paramStringBuffer.append((char)(paramInt % 10 + 48));
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    appendTo(paramStringBuffer, paramCalendar.get(2) + 1);
  }
  
  public int estimateLength()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TwoDigitMonthField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */