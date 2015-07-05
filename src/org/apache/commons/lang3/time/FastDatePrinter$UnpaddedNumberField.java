package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$UnpaddedNumberField
  implements FastDatePrinter.NumberRule
{
  private final int mField;
  
  FastDatePrinter$UnpaddedNumberField(int paramInt)
  {
    mField = paramInt;
  }
  
  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt < 10)
    {
      paramStringBuffer.append((char)(paramInt + 48));
      return;
    }
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
    return 4;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.UnpaddedNumberField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */