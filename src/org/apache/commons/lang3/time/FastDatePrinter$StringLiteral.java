package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$StringLiteral
  implements FastDatePrinter.Rule
{
  private final String mValue;
  
  FastDatePrinter$StringLiteral(String paramString)
  {
    mValue = paramString;
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    paramStringBuffer.append(mValue);
  }
  
  public int estimateLength()
  {
    return mValue.length();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.StringLiteral
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */