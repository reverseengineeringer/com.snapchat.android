import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

final class cjj
  extends cji
  implements cjp, cjt
{
  static final cjj a = new cjj();
  
  public final long a(Object paramObject)
  {
    return ((Calendar)paramObject).getTime().getTime();
  }
  
  public final Class<?> a()
  {
    return Calendar.class;
  }
  
  public final chg b(Object paramObject)
  {
    Calendar localCalendar = (Calendar)paramObject;
    try
    {
      paramObject = chl.a(localCalendar.getTimeZone());
      if (localCalendar.getClass().getName().endsWith(".BuddhistCalendar")) {
        return civ.b((chl)paramObject);
      }
    }
    catch (IllegalArgumentException paramObject)
    {
      for (;;)
      {
        paramObject = chl.a();
      }
      if ((localCalendar instanceof GregorianCalendar))
      {
        long l = ((GregorianCalendar)localCalendar).getGregorianChange().getTime();
        if (l == Long.MIN_VALUE) {
          return cjc.b((chl)paramObject);
        }
        if (l == Long.MAX_VALUE) {
          return cjf.b((chl)paramObject);
        }
        return ciw.a((chl)paramObject, l);
      }
    }
    return cjd.b((chl)paramObject);
  }
}

/* Location:
 * Qualified Name:     cjj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */