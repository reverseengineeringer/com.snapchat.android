package org.apache.commons.lang3.time;

import java.util.Calendar;
import org.apache.commons.lang3.Validate;

class FastDatePrinter$PaddedNumberField
  implements FastDatePrinter.NumberRule
{
  private final int mField;
  private final int mSize;
  
  FastDatePrinter$PaddedNumberField(int paramInt1, int paramInt2)
  {
    if (paramInt2 < 3) {
      throw new IllegalArgumentException();
    }
    mField = paramInt1;
    mSize = paramInt2;
  }
  
  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    int i;
    if (paramInt < 100)
    {
      i = mSize;
      for (;;)
      {
        i -= 1;
        if (i < 2) {
          break;
        }
        paramStringBuffer.append('0');
      }
      paramStringBuffer.append((char)(paramInt / 10 + 48));
      paramStringBuffer.append((char)(paramInt % 10 + 48));
      return;
    }
    if (paramInt < 1000)
    {
      i = 3;
      int j = mSize;
      for (;;)
      {
        j -= 1;
        if (j < i) {
          break;
        }
        paramStringBuffer.append('0');
      }
    }
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      Validate.isTrue(bool, "Negative values should not be possible", paramInt);
      i = Integer.toString(paramInt).length();
      break;
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
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.PaddedNumberField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */