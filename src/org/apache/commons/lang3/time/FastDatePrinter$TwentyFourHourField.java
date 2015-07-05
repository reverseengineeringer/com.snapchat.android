package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$TwentyFourHourField
  implements FastDatePrinter.NumberRule
{
  private final FastDatePrinter.NumberRule mRule;
  
  FastDatePrinter$TwentyFourHourField(FastDatePrinter.NumberRule paramNumberRule)
  {
    mRule = paramNumberRule;
  }
  
  public void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    mRule.appendTo(paramStringBuffer, paramInt);
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    int j = paramCalendar.get(11);
    int i = j;
    if (j == 0) {
      i = paramCalendar.getMaximum(11) + 1;
    }
    mRule.appendTo(paramStringBuffer, i);
  }
  
  public int estimateLength()
  {
    return mRule.estimateLength();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TwentyFourHourField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */