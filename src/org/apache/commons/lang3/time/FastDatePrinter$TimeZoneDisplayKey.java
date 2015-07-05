package org.apache.commons.lang3.time;

import java.util.Locale;
import java.util.TimeZone;

class FastDatePrinter$TimeZoneDisplayKey
{
  private final Locale mLocale;
  private final int mStyle;
  private final TimeZone mTimeZone;
  
  FastDatePrinter$TimeZoneDisplayKey(TimeZone paramTimeZone, boolean paramBoolean, int paramInt, Locale paramLocale)
  {
    mTimeZone = paramTimeZone;
    if (paramBoolean) {}
    for (mStyle = (0x80000000 | paramInt);; mStyle = paramInt)
    {
      mLocale = paramLocale;
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof TimeZoneDisplayKey)) {
        break;
      }
      paramObject = (TimeZoneDisplayKey)paramObject;
    } while ((mTimeZone.equals(mTimeZone)) && (mStyle == mStyle) && (mLocale.equals(mLocale)));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return (mStyle * 31 + mLocale.hashCode()) * 31 + mTimeZone.hashCode();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDatePrinter.TimeZoneDisplayKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */