import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

final class cii
  extends cih
  implements cio, cis
{
  static final cii a = new cii();
  
  public final long a(Object paramObject)
  {
    return ((Calendar)paramObject).getTime().getTime();
  }
  
  public final Class<?> a()
  {
    return Calendar.class;
  }
  
  public final cgf b(Object paramObject)
  {
    Calendar localCalendar = (Calendar)paramObject;
    try
    {
      paramObject = cgk.a(localCalendar.getTimeZone());
      if (localCalendar.getClass().getName().endsWith(".BuddhistCalendar")) {
        return chu.b((cgk)paramObject);
      }
    }
    catch (IllegalArgumentException paramObject)
    {
      for (;;)
      {
        paramObject = cgk.a();
      }
      if ((localCalendar instanceof GregorianCalendar))
      {
        long l = ((GregorianCalendar)localCalendar).getGregorianChange().getTime();
        if (l == Long.MIN_VALUE) {
          return cib.b((cgk)paramObject);
        }
        if (l == Long.MAX_VALUE) {
          return cie.b((cgk)paramObject);
        }
        return chv.a((cgk)paramObject, l);
      }
    }
    return cic.b((cgk)paramObject);
  }
}

/* Location:
 * Qualified Name:     cii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */