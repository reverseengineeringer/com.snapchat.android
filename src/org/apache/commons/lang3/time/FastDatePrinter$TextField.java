package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$TextField
  implements FastDatePrinter.Rule
{
  private final int mField;
  private final String[] mValues;
  
  FastDatePrinter$TextField(int paramInt, String[] paramArrayOfString)
  {
    mField = paramInt;
    mValues = paramArrayOfString;
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    paramStringBuffer.append(mValues[paramCalendar.get(mField)]);
  }
  
  public int estimateLength()
  {
    int i = 0;
    int j = mValues.length;
    j -= 1;
    if (j >= 0)
    {
      int k = mValues[j].length();
      if (k <= i) {
        break label38;
      }
      i = k;
    }
    label38:
    for (;;)
    {
      break;
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TextField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */