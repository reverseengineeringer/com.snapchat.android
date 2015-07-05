package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$TwoDigitNumberField
  implements FastDatePrinter.NumberRule
{
  private final int mField;
  
  FastDatePrinter$TwoDigitNumberField(int paramInt)
  {
    mField = paramInt;
  }
  
  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt < 100)
    {
      paramStringBuffer.append((char)(paramInt / 10 + 48));
      paramStringBuffer.append((char)(paramInt % 10 + 48));
      return;
    }
    paramStringBuffer.append(Integer.toString(paramInt));
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    appendTo(paramStringBuffer, paramCalendar.get(mField));
  }
  
  public int estimateLength()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TwoDigitNumberField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */