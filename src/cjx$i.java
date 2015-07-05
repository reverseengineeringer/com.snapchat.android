import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

final class cjx$i
  implements cjy, cka
{
  private static Map<Locale, Map<cgi, Object[]>> a = new HashMap();
  private final cgi b;
  private final boolean c;
  
  cjx$i(cgi paramcgi, boolean paramBoolean)
  {
    b = paramcgi;
    c = paramBoolean;
  }
  
  public final int a()
  {
    if (c) {
      return 6;
    }
    return 20;
  }
  
  public final int a(cjz paramcjz, String paramString, int paramInt)
  {
    Locale localLocale = d;
    label571:
    label604:
    label608:
    for (;;)
    {
      Object localObject2;
      cgi localcgi;
      synchronized (a)
      {
        localObject1 = (Map)a.get(localLocale);
        if (localObject1 != null) {
          break label608;
        }
        localObject1 = new HashMap();
        a.put(localLocale, localObject1);
        localObject2 = (Object[])((Map)localObject1).get(b);
        if (localObject2 != null) {
          break label571;
        }
        localObject2 = new HashSet(32);
        localObject3 = new cgt(0L, cgk.a);
        localcgi = b;
        if (localcgi == null) {
          throw new IllegalArgumentException("The DateTimeFieldType must not be null");
        }
      }
      cgh localcgh = localcgi.a(b);
      if (!localcgh.c()) {
        throw new IllegalArgumentException("Field '" + localcgi + "' is not supported");
      }
      Object localObject3 = new cgt.a((cgt)localObject3, localcgh);
      int i = ((cja)localObject3).a().g();
      int k = ((cja)localObject3).a().h();
      if (k - i > 32) {
        return paramInt ^ 0xFFFFFFFF;
      }
      int j = ((cja)localObject3).a().a(localLocale);
      while (i <= k)
      {
        a.a(b.b(a.a, i));
        ((Set)localObject2).add(((cgt.a)localObject3).b(localLocale));
        ((Set)localObject2).add(((cgt.a)localObject3).b(localLocale).toLowerCase(localLocale));
        ((Set)localObject2).add(((cgt.a)localObject3).b(localLocale).toUpperCase(localLocale));
        ((Set)localObject2).add(((cgt.a)localObject3).a(localLocale));
        ((Set)localObject2).add(((cgt.a)localObject3).a(localLocale).toLowerCase(localLocale));
        ((Set)localObject2).add(((cgt.a)localObject3).a(localLocale).toUpperCase(localLocale));
        i += 1;
      }
      i = j;
      if ("en".equals(localLocale.getLanguage()))
      {
        i = j;
        if (b == cgi.w())
        {
          ((Set)localObject2).add("BCE");
          ((Set)localObject2).add("bce");
          ((Set)localObject2).add("CE");
          ((Set)localObject2).add("ce");
          i = 3;
        }
      }
      ((Map)localObject1).put(b, new Object[] { localObject2, Integer.valueOf(i) });
      Object localObject1 = localObject2;
      i = Math.min(paramString.length(), i + paramInt);
      for (;;)
      {
        if (i <= paramInt) {
          break label604;
        }
        localObject2 = paramString.substring(paramInt, i);
        if (((Set)localObject1).contains(localObject2))
        {
          paramcjz.a(new cjz.a(b.a(a), (String)localObject2, localLocale));
          return i;
          localObject1 = (Set)localObject2[0];
          i = ((Integer)localObject2[1]).intValue();
          break;
        }
        i -= 1;
      }
      return paramInt ^ 0xFFFFFFFF;
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
  {
    try
    {
      paramcgf = b.a(paramcgf);
      if (c) {}
      for (paramcgf = paramcgf.b(paramLong, paramLocale);; paramcgf = paramcgf.a(paramLong, paramLocale))
      {
        paramStringBuffer.append(paramcgf);
        return;
      }
      return;
    }
    catch (RuntimeException paramcgf)
    {
      paramStringBuffer.append(65533);
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
  {
    try
    {
      cgh localcgh;
      if (paramchb.b(b))
      {
        localcgh = b.a(paramchb.b());
        if (c) {
          paramchb = localcgh.b(paramchb, paramLocale);
        }
      }
      for (;;)
      {
        paramStringBuffer.append(paramchb);
        return;
        paramchb = localcgh.a(paramchb, paramLocale);
        continue;
        paramchb = "�";
      }
      return;
    }
    catch (RuntimeException paramchb)
    {
      paramStringBuffer.append(65533);
    }
  }
  
  public final int b()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     cjx.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */