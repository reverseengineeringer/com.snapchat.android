package org.apache.commons.lang3.time;

import java.util.Locale;
import java.util.TimeZone;

final class FastDateFormat$1
  extends FormatCache<FastDateFormat>
{
  protected final FastDateFormat createInstance(String paramString, TimeZone paramTimeZone, Locale paramLocale)
  {
    return new FastDateFormat(paramString, paramTimeZone, paramLocale);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */