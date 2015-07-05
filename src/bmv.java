import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class bmv
{
  private static final TimeZone a = TimeZone.getTimeZone("GMT");
  private static final ThreadLocal<DateFormat> b = new ThreadLocal() {};
  private static final String[] c = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" };
  private static final DateFormat[] d = new DateFormat[15];
  
  public static Date a(String paramString)
  {
    int i = 0;
    Object localObject;
    if (paramString.length() == 0) {
      localObject = null;
    }
    ParsePosition localParsePosition;
    do
    {
      return (Date)localObject;
      localParsePosition = new ParsePosition(0);
      localObject = ((DateFormat)b.get()).parse(paramString, localParsePosition);
    } while (localParsePosition.getIndex() == paramString.length());
    for (;;)
    {
      synchronized (c)
      {
        int j = c.length;
        if (i >= j) {
          break;
        }
        DateFormat localDateFormat = d[i];
        localObject = localDateFormat;
        if (localDateFormat == null)
        {
          localObject = new SimpleDateFormat(c[i], Locale.US);
          ((DateFormat)localObject).setTimeZone(a);
          d[i] = localObject;
        }
        localParsePosition.setIndex(0);
        localObject = ((DateFormat)localObject).parse(paramString, localParsePosition);
        if (localParsePosition.getIndex() != 0) {
          return (Date)localObject;
        }
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bmv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */