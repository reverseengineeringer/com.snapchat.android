package org.apache.commons.lang3.time;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class FastDateFormat
  extends Format
  implements DateParser, DatePrinter
{
  public static final int FULL = 0;
  public static final int LONG = 1;
  public static final int MEDIUM = 2;
  public static final int SHORT = 3;
  private static final FormatCache<FastDateFormat> cache = new FormatCache()
  {
    protected final FastDateFormat createInstance(String paramAnonymousString, TimeZone paramAnonymousTimeZone, Locale paramAnonymousLocale)
    {
      return new FastDateFormat(paramAnonymousString, paramAnonymousTimeZone, paramAnonymousLocale);
    }
  };
  private static final long serialVersionUID = 2L;
  private final FastDateParser parser;
  private final FastDatePrinter printer;
  
  protected FastDateFormat(String paramString, TimeZone paramTimeZone, Locale paramLocale)
  {
    this(paramString, paramTimeZone, paramLocale, null);
  }
  
  protected FastDateFormat(String paramString, TimeZone paramTimeZone, Locale paramLocale, Date paramDate)
  {
    printer = new FastDatePrinter(paramString, paramTimeZone, paramLocale);
    parser = new FastDateParser(paramString, paramTimeZone, paramLocale, paramDate);
  }
  
  public static FastDateFormat getDateInstance(int paramInt)
  {
    return (FastDateFormat)cache.getDateInstance(paramInt, null, null);
  }
  
  public static FastDateFormat getDateInstance(int paramInt, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateInstance(paramInt, null, paramLocale);
  }
  
  public static FastDateFormat getDateInstance(int paramInt, TimeZone paramTimeZone)
  {
    return (FastDateFormat)cache.getDateInstance(paramInt, paramTimeZone, null);
  }
  
  public static FastDateFormat getDateInstance(int paramInt, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateInstance(paramInt, paramTimeZone, paramLocale);
  }
  
  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2)
  {
    return (FastDateFormat)cache.getDateTimeInstance(paramInt1, paramInt2, null, null);
  }
  
  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(paramInt1, paramInt2, null, paramLocale);
  }
  
  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2, TimeZone paramTimeZone)
  {
    return getDateTimeInstance(paramInt1, paramInt2, paramTimeZone, null);
  }
  
  public static FastDateFormat getDateTimeInstance(int paramInt1, int paramInt2, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getDateTimeInstance(paramInt1, paramInt2, paramTimeZone, paramLocale);
  }
  
  public static FastDateFormat getInstance()
  {
    return (FastDateFormat)cache.getInstance();
  }
  
  public static FastDateFormat getInstance(String paramString)
  {
    return (FastDateFormat)cache.getInstance(paramString, null, null);
  }
  
  public static FastDateFormat getInstance(String paramString, Locale paramLocale)
  {
    return (FastDateFormat)cache.getInstance(paramString, null, paramLocale);
  }
  
  public static FastDateFormat getInstance(String paramString, TimeZone paramTimeZone)
  {
    return (FastDateFormat)cache.getInstance(paramString, paramTimeZone, null);
  }
  
  public static FastDateFormat getInstance(String paramString, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getInstance(paramString, paramTimeZone, paramLocale);
  }
  
  public static FastDateFormat getTimeInstance(int paramInt)
  {
    return (FastDateFormat)cache.getTimeInstance(paramInt, null, null);
  }
  
  public static FastDateFormat getTimeInstance(int paramInt, Locale paramLocale)
  {
    return (FastDateFormat)cache.getTimeInstance(paramInt, null, paramLocale);
  }
  
  public static FastDateFormat getTimeInstance(int paramInt, TimeZone paramTimeZone)
  {
    return (FastDateFormat)cache.getTimeInstance(paramInt, paramTimeZone, null);
  }
  
  public static FastDateFormat getTimeInstance(int paramInt, TimeZone paramTimeZone, Locale paramLocale)
  {
    return (FastDateFormat)cache.getTimeInstance(paramInt, paramTimeZone, paramLocale);
  }
  
  protected StringBuffer applyRules(Calendar paramCalendar, StringBuffer paramStringBuffer)
  {
    return printer.applyRules(paramCalendar, paramStringBuffer);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof FastDateFormat)) {
      return false;
    }
    paramObject = (FastDateFormat)paramObject;
    return printer.equals(printer);
  }
  
  public String format(long paramLong)
  {
    return printer.format(paramLong);
  }
  
  public String format(Calendar paramCalendar)
  {
    return printer.format(paramCalendar);
  }
  
  public String format(Date paramDate)
  {
    return printer.format(paramDate);
  }
  
  public StringBuffer format(long paramLong, StringBuffer paramStringBuffer)
  {
    return printer.format(paramLong, paramStringBuffer);
  }
  
  public StringBuffer format(Object paramObject, StringBuffer paramStringBuffer, FieldPosition paramFieldPosition)
  {
    return printer.format(paramObject, paramStringBuffer, paramFieldPosition);
  }
  
  public StringBuffer format(Calendar paramCalendar, StringBuffer paramStringBuffer)
  {
    return printer.format(paramCalendar, paramStringBuffer);
  }
  
  public StringBuffer format(Date paramDate, StringBuffer paramStringBuffer)
  {
    return printer.format(paramDate, paramStringBuffer);
  }
  
  public Locale getLocale()
  {
    return printer.getLocale();
  }
  
  public int getMaxLengthEstimate()
  {
    return printer.getMaxLengthEstimate();
  }
  
  public String getPattern()
  {
    return printer.getPattern();
  }
  
  public TimeZone getTimeZone()
  {
    return printer.getTimeZone();
  }
  
  public int hashCode()
  {
    return printer.hashCode();
  }
  
  public Date parse(String paramString)
  {
    return parser.parse(paramString);
  }
  
  public Date parse(String paramString, ParsePosition paramParsePosition)
  {
    return parser.parse(paramString, paramParsePosition);
  }
  
  public Object parseObject(String paramString, ParsePosition paramParsePosition)
  {
    return parser.parseObject(paramString, paramParsePosition);
  }
  
  public String toString()
  {
    return "FastDateFormat[" + printer.getPattern() + "," + printer.getLocale() + "," + printer.getTimeZone().getID() + "]";
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */