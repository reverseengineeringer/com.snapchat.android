package org.apache.commons.lang3.time;

import java.util.Calendar;

abstract interface FastDatePrinter$Rule
{
  public abstract void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar);
  
  public abstract int estimateLength();
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.Rule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */