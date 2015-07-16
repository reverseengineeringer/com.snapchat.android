import java.lang.reflect.Method;
import java.text.DateFormatSymbols;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

public final class chk
{
  private static final chk.b a;
  private static volatile chk.a b;
  private static volatile Map<String, chl> c;
  
  static
  {
    Object localObject = new chk.b();
    a = (chk.b)localObject;
    b = (chk.a)localObject;
    localObject = new LinkedHashMap();
    ((Map)localObject).put("UT", chl.a);
    ((Map)localObject).put("UTC", chl.a);
    ((Map)localObject).put("GMT", chl.a);
    a((Map)localObject, "EST", "America/New_York");
    a((Map)localObject, "EDT", "America/New_York");
    a((Map)localObject, "CST", "America/Chicago");
    a((Map)localObject, "CDT", "America/Chicago");
    a((Map)localObject, "MST", "America/Denver");
    a((Map)localObject, "MDT", "America/Denver");
    a((Map)localObject, "PST", "America/Los_Angeles");
    a((Map)localObject, "PDT", "America/Los_Angeles");
    c = Collections.unmodifiableMap((Map)localObject);
  }
  
  public static final long a()
  {
    return b.a();
  }
  
  public static final long a(cia paramcia)
  {
    if (paramcia == null) {
      return a();
    }
    return paramcia.c();
  }
  
  public static final chg a(chg paramchg)
  {
    Object localObject = paramchg;
    if (paramchg == null) {
      localObject = cjd.M();
    }
    return (chg)localObject;
  }
  
  public static final chl a(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    return localchl;
  }
  
  public static final DateFormatSymbols a(Locale paramLocale)
  {
    try
    {
      DateFormatSymbols localDateFormatSymbols = (DateFormatSymbols)DateFormatSymbols.class.getMethod("getInstance", new Class[] { Locale.class }).invoke(null, new Object[] { paramLocale });
      return localDateFormatSymbols;
    }
    catch (Exception localException) {}
    return new DateFormatSymbols(paramLocale);
  }
  
  private static void a(Map<String, chl> paramMap, String paramString1, String paramString2)
  {
    try
    {
      paramMap.put(paramString1, chl.a(paramString2));
      return;
    }
    catch (RuntimeException paramMap) {}
  }
  
  public static final chg b(cia paramcia)
  {
    if (paramcia == null) {
      paramcia = cjd.M();
    }
    chg localchg;
    do
    {
      return paramcia;
      localchg = paramcia.d();
      paramcia = localchg;
    } while (localchg != null);
    return cjd.M();
  }
  
  public static final Map<String, chl> b()
  {
    return c;
  }
  
  public static abstract interface a
  {
    public abstract long a();
  }
  
  static final class b
    implements chk.a
  {
    public final long a()
    {
      return System.currentTimeMillis();
    }
  }
}

/* Location:
 * Qualified Name:     chk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */