package org.apache.commons.lang3.time;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

class FastDatePrinter$TimeZoneNameRule
  implements FastDatePrinter.Rule
{
  private final String mDaylight;
  private final Locale mLocale;
  private final String mStandard;
  private final int mStyle;
  
  FastDatePrinter$TimeZoneNameRule(TimeZone paramTimeZone, Locale paramLocale, int paramInt)
  {
    mLocale = paramLocale;
    mStyle = paramInt;
    mStandard = FastDatePrinter.getTimeZoneDisplay(paramTimeZone, false, paramInt, paramLocale);
    mDaylight = FastDatePrinter.getTimeZoneDisplay(paramTimeZone, true, paramInt, paramLocale);
  }
  
  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    TimeZone localTimeZone = paramCalendar.getTimeZone();
    if ((localTimeZone.useDaylightTime()) && (paramCalendar.get(16) != 0))
    {
      paramStringBuffer.append(FastDatePrinter.getTimeZoneDisplay(localTimeZone, true, mStyle, mLocale));
      return;
    }
    paramStringBuffer.append(FastDatePrinter.getTimeZoneDisplay(localTimeZone, false, mStyle, mLocale));
  }
  
  public int estimateLength()
  {
    return Math.max(mStandard.length(), mDaylight.length());
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TimeZoneNameRule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */