package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDatePrinter$TimeZoneNumberRule
  implements FastDatePrinter.Rule
{
  static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
  static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
  final boolean mColon;
  
  FastDatePrinter$TimeZoneNumberRule(boolean paramBoolean)
  {
    mColon = paramBoolean;
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    int i = paramCalendar.get(15) + paramCalendar.get(16);
    if (i < 0)
    {
      paramStringBuffer.append('-');
      i = -i;
    }
    for (;;)
    {
      int j = i / 3600000;
      paramStringBuffer.append((char)(j / 10 + 48));
      paramStringBuffer.append((char)(j % 10 + 48));
      if (mColon) {
        paramStringBuffer.append(':');
      }
      i = i / 60000 - j * 60;
      paramStringBuffer.append((char)(i / 10 + 48));
      paramStringBuffer.append((char)(i % 10 + 48));
      return;
      paramStringBuffer.append('+');
    }
  }
  
  public int estimateLength()
  {
    return 5;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TimeZoneNumberRule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */