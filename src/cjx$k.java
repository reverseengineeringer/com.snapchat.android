import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

final class cjx$k
  implements cjy, cka
{
  private final Map<String, cgk> a;
  private final int b;
  
  cjx$k(int paramInt)
  {
    b = paramInt;
    a = null;
  }
  
  public final int a()
  {
    if (b == 1) {
      return 4;
    }
    return 20;
  }
  
  public final int a(cjz paramcjz, String paramString, int paramInt)
  {
    Map localMap = a;
    label34:
    String str2;
    if (localMap != null)
    {
      String str3 = paramString.substring(paramInt);
      paramString = null;
      Iterator localIterator = localMap.keySet().iterator();
      if (!localIterator.hasNext()) {
        break label104;
      }
      str2 = (String)localIterator.next();
      if (!str3.startsWith(str2)) {
        break label134;
      }
      str1 = str2;
      if (paramString != null) {
        if (str2.length() <= paramString.length()) {
          break label134;
        }
      }
    }
    label104:
    label134:
    for (String str1 = str2;; str1 = paramString)
    {
      paramString = str1;
      break label34;
      localMap = cgj.b();
      break;
      if (paramString != null)
      {
        paramcjz.a((cgk)localMap.get(paramString));
        return paramString.length() + paramInt;
      }
      return paramInt ^ 0xFFFFFFFF;
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
  {
    paramLong -= paramInt;
    if (paramcgk != null) {}
    switch (b)
    {
    default: 
      paramcgf = "";
    }
    for (;;)
    {
      paramStringBuffer.append(paramcgf);
      return;
      paramcgf = paramLocale;
      if (paramLocale == null) {
        paramcgf = Locale.getDefault();
      }
      paramLocale = paramcgk.a(paramLong);
      if (paramLocale == null)
      {
        paramcgf = c;
      }
      else
      {
        paramLocale = cgk.b.b(paramcgf, c, paramLocale);
        paramcgf = paramLocale;
        if (paramLocale == null)
        {
          paramcgf = cgk.b(paramcgk.b(paramLong));
          continue;
          paramcgf = paramLocale;
          if (paramLocale == null) {
            paramcgf = Locale.getDefault();
          }
          paramLocale = paramcgk.a(paramLong);
          if (paramLocale == null)
          {
            paramcgf = c;
          }
          else
          {
            paramLocale = cgk.b.a(paramcgf, c, paramLocale);
            paramcgf = paramLocale;
            if (paramLocale == null) {
              paramcgf = cgk.b(paramcgk.b(paramLong));
            }
          }
        }
      }
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale) {}
  
  public final int b()
  {
    if (b == 1) {
      return 4;
    }
    return 20;
  }
}

/* Location:
 * Qualified Name:     cjx.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */