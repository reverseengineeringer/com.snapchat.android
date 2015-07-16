import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

final class cky$k
  implements ckz, clb
{
  private final Map<String, chl> a;
  private final int b;
  
  cky$k(int paramInt)
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
  
  public final int a(cla paramcla, String paramString, int paramInt)
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
      localMap = chk.b();
      break;
      if (paramString != null)
      {
        paramcla.a((chl)localMap.get(paramString));
        return paramString.length() + paramInt;
      }
      return paramInt ^ 0xFFFFFFFF;
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
  {
    paramLong -= paramInt;
    if (paramchl != null) {}
    switch (b)
    {
    default: 
      paramchg = "";
    }
    for (;;)
    {
      paramStringBuffer.append(paramchg);
      return;
      paramchg = paramLocale;
      if (paramLocale == null) {
        paramchg = Locale.getDefault();
      }
      paramLocale = paramchl.a(paramLong);
      if (paramLocale == null)
      {
        paramchg = c;
      }
      else
      {
        paramLocale = chl.b.b(paramchg, c, paramLocale);
        paramchg = paramLocale;
        if (paramLocale == null)
        {
          paramchg = chl.b(paramchl.b(paramLong));
          continue;
          paramchg = paramLocale;
          if (paramLocale == null) {
            paramchg = Locale.getDefault();
          }
          paramLocale = paramchl.a(paramLong);
          if (paramLocale == null)
          {
            paramchg = c;
          }
          else
          {
            paramLocale = chl.b.a(paramchg, c, paramLocale);
            paramchg = paramLocale;
            if (paramLocale == null) {
              paramchg = chl.b(paramchl.b(paramLong));
            }
          }
        }
      }
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale) {}
  
  public final int b()
  {
    if (b == 1) {
      return 4;
    }
    return 20;
  }
}

/* Location:
 * Qualified Name:     cky.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */