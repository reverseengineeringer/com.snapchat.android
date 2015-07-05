import java.lang.reflect.Method;
import java.text.DateFormatSymbols;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

public final class cgj
{
  private static final cgj.b a;
  private static volatile cgj.a b;
  private static volatile Map<String, cgk> c;
  
  static
  {
    Object localObject = new cgj.b();
    a = (cgj.b)localObject;
    b = (cgj.a)localObject;
    localObject = new LinkedHashMap();
    ((Map)localObject).put("UT", cgk.a);
    ((Map)localObject).put("UTC", cgk.a);
    ((Map)localObject).put("GMT", cgk.a);
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
  
  public static final long a(cgz paramcgz)
  {
    if (paramcgz == null) {
      return a();
    }
    return paramcgz.c();
  }
  
  public static final cgf a(cgf paramcgf)
  {
    Object localObject = paramcgf;
    if (paramcgf == null) {
      localObject = cic.M();
    }
    return (cgf)localObject;
  }
  
  public static final cgk a(cgk paramcgk)
  {
    cgk localcgk = paramcgk;
    if (paramcgk == null) {
      localcgk = cgk.a();
    }
    return localcgk;
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
  
  private static void a(Map<String, cgk> paramMap, String paramString1, String paramString2)
  {
    try
    {
      paramMap.put(paramString1, cgk.a(paramString2));
      return;
    }
    catch (RuntimeException paramMap) {}
  }
  
  public static final cgf b(cgz paramcgz)
  {
    if (paramcgz == null) {
      paramcgz = cic.M();
    }
    cgf localcgf;
    do
    {
      return paramcgz;
      localcgf = paramcgz.d();
      paramcgz = localcgf;
    } while (localcgf != null);
    return cic.M();
  }
  
  public static final Map<String, cgk> b()
  {
    return c;
  }
  
  public static abstract interface a
  {
    public abstract long a();
  }
  
  static final class b
    implements cgj.a
  {
    public final long a()
    {
      return System.currentTimeMillis();
    }
  }
}

/* Location:
 * Qualified Name:     cgj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */