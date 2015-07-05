package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$CharacterLiteral
  implements FastDatePrinter.Rule
{
  private final char mValue;
  
  FastDatePrinter$CharacterLiteral(char paramChar)
  {
    mValue = paramChar;
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    paramStringBuffer.append(mValue);
  }
  
  public int estimateLength()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.CharacterLiteral
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */