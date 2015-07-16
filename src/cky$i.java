import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

final class cky$i
  implements ckz, clb
{
  private static Map<Locale, Map<chj, Object[]>> a = new HashMap();
  private final chj b;
  private final boolean c;
  
  cky$i(chj paramchj, boolean paramBoolean)
  {
    b = paramchj;
    c = paramBoolean;
  }
  
  public final int a()
  {
    if (c) {
      return 6;
    }
    return 20;
  }
  
  public final int a(cla paramcla, String paramString, int paramInt)
  {
    Locale localLocale = d;
    label571:
    label604:
    label608:
    for (;;)
    {
      Object localObject2;
      chj localchj;
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
        localObject3 = new chu(0L, chl.a);
        localchj = b;
        if (localchj == null) {
          throw new IllegalArgumentException("The DateTimeFieldType must not be null");
        }
      }
      chi localchi = localchj.a(b);
      if (!localchi.c()) {
        throw new IllegalArgumentException("Field '" + localchj + "' is not supported");
      }
      Object localObject3 = new chu.a((chu)localObject3, localchi);
      int i = ((ckb)localObject3).a().g();
      int k = ((ckb)localObject3).a().h();
      if (k - i > 32) {
        return paramInt ^ 0xFFFFFFFF;
      }
      int j = ((ckb)localObject3).a().a(localLocale);
      while (i <= k)
      {
        a.a(b.b(a.a, i));
        ((Set)localObject2).add(((chu.a)localObject3).b(localLocale));
        ((Set)localObject2).add(((chu.a)localObject3).b(localLocale).toLowerCase(localLocale));
        ((Set)localObject2).add(((chu.a)localObject3).b(localLocale).toUpperCase(localLocale));
        ((Set)localObject2).add(((chu.a)localObject3).a(localLocale));
        ((Set)localObject2).add(((chu.a)localObject3).a(localLocale).toLowerCase(localLocale));
        ((Set)localObject2).add(((chu.a)localObject3).a(localLocale).toUpperCase(localLocale));
        i += 1;
      }
      i = j;
      if ("en".equals(localLocale.getLanguage()))
      {
        i = j;
        if (b == chj.w())
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
          paramcla.a(new cla.a(b.a(a), (String)localObject2, localLocale));
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
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
  {
    try
    {
      paramchg = b.a(paramchg);
      if (c) {}
      for (paramchg = paramchg.b(paramLong, paramLocale);; paramchg = paramchg.a(paramLong, paramLocale))
      {
        paramStringBuffer.append(paramchg);
        return;
      }
      return;
    }
    catch (RuntimeException paramchg)
    {
      paramStringBuffer.append(65533);
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
  {
    try
    {
      chi localchi;
      if (paramcic.b(b))
      {
        localchi = b.a(paramcic.b());
        if (c) {
          paramcic = localchi.b(paramcic, paramLocale);
        }
      }
      for (;;)
      {
        paramStringBuffer.append(paramcic);
        return;
        paramcic = localchi.a(paramcic, paramLocale);
        continue;
        paramcic = "�";
      }
      return;
    }
    catch (RuntimeException paramcic)
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
 * Qualified Name:     cky.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */