import java.util.Arrays;
import java.util.Locale;

public final class cla
{
  final chg a;
  public chl b;
  public Integer c;
  Locale d;
  Integer e;
  cla.a[] f = new cla.a[8];
  int g;
  boolean h;
  private final long i;
  private int j;
  private Object k;
  
  public cla(chg paramchg, Locale paramLocale, Integer paramInteger, int paramInt)
  {
    paramchg = chk.a(paramchg);
    i = 0L;
    b = paramchg.a();
    a = paramchg.b();
    paramchg = paramLocale;
    if (paramLocale == null) {
      paramchg = Locale.getDefault();
    }
    d = paramchg;
    e = paramInteger;
    j = paramInt;
  }
  
  static int a(chn paramchn1, chn paramchn2)
  {
    if ((paramchn1 == null) || (!paramchn1.b()))
    {
      if ((paramchn2 == null) || (!paramchn2.b())) {
        return 0;
      }
      return -1;
    }
    if ((paramchn2 == null) || (!paramchn2.b())) {
      return 1;
    }
    return -paramchn1.compareTo(paramchn2);
  }
  
  public final long a(String paramString)
  {
    cla.a[] arrayOfa = f;
    int i1 = g;
    if (h)
    {
      arrayOfa = (cla.a[])f.clone();
      f = arrayOfa;
      h = false;
    }
    if (i1 > 10) {
      Arrays.sort(arrayOfa, 0, i1);
    }
    Object localObject2;
    for (;;)
    {
      if (i1 <= 0) {
        break label203;
      }
      localObject2 = cho.i().a(a);
      chn localchn1 = cho.f().a(a);
      chn localchn2 = 0a.d();
      if ((a(localchn2, (chn)localObject2) < 0) || (a(localchn2, localchn1) > 0)) {
        break label203;
      }
      a(chj.s(), j);
      break;
      m = 0;
      while (m < i1)
      {
        int n = m;
        while ((n > 0) && (arrayOfa[(n - 1)].a(arrayOfa[n]) > 0))
        {
          localObject2 = arrayOfa[n];
          arrayOfa[n] = arrayOfa[(n - 1)];
          arrayOfa[(n - 1)] = localObject2;
          n -= 1;
        }
        m += 1;
      }
    }
    label203:
    long l2 = i;
    int m = 0;
    if (m < i1) {}
    for (;;)
    {
      try
      {
        l2 = arrayOfa[m].a(l2, true);
        m += 1;
      }
      catch (chp localchp)
      {
        if (paramString == null) {
          break label302;
        }
        paramString = "Cannot parse \"" + paramString + '"';
        if (a != null) {
          break label305;
        }
        a = paramString;
      }
      l2 = ((cla.a)localObject2).a(l2, bool);
      m += 1;
      break label486;
      boolean bool = false;
      continue;
      label302:
      label305:
      do
      {
        throw localchp;
      } while (paramString == null);
      a = (paramString + ": " + a);
      Object localObject1;
      label486:
      while (m >= i1)
      {
        long l1;
        if (c != null) {
          l1 = l2 - c.intValue();
        }
        do
        {
          do
          {
            return l1;
            l1 = l2;
          } while (b == null);
          m = b.c(l2);
          l2 -= m;
          l1 = l2;
        } while (m == b.b(l2));
        localObject2 = "Illegal instant due to time zone offset transition (" + b + ')';
        localObject1 = localObject2;
        if (paramString != null) {
          localObject1 = "Cannot parse \"" + paramString + "\": " + (String)localObject2;
        }
        throw new chq((String)localObject1);
        m = 0;
      }
      localObject2 = localObject1[m];
      if (m == i1 - 1) {
        bool = true;
      }
    }
  }
  
  public final Object a()
  {
    if (k == null) {
      k = new cla.b();
    }
    return k;
  }
  
  public final void a(chj paramchj, int paramInt)
  {
    a(new cla.a(paramchj.a(a), paramInt));
  }
  
  public final void a(chl paramchl)
  {
    k = null;
    b = paramchl;
  }
  
  final void a(cla.a parama)
  {
    Object localObject = f;
    int n = g;
    int m;
    if ((n == localObject.length) || (h)) {
      if (n == localObject.length)
      {
        m = n * 2;
        cla.a[] arrayOfa = new cla.a[m];
        System.arraycopy(localObject, 0, arrayOfa, 0, n);
        f = arrayOfa;
        h = false;
        localObject = arrayOfa;
      }
    }
    for (;;)
    {
      k = null;
      localObject[n] = parama;
      g = (n + 1);
      return;
      m = localObject.length;
      break;
    }
  }
  
  public final void a(Integer paramInteger)
  {
    k = null;
    c = paramInteger;
  }
  
  public final boolean a(Object paramObject)
  {
    if ((paramObject instanceof cla.b))
    {
      cla.b localb = (cla.b)paramObject;
      if (this != e) {}
      for (int m = 0; m != 0; m = 1)
      {
        k = paramObject;
        return true;
        b = a;
        c = b;
        f = c;
        if (d < g) {
          h = true;
        }
        g = d;
      }
    }
    return false;
  }
  
  static final class a
    implements Comparable<a>
  {
    final chi a;
    final int b;
    final String c;
    final Locale d;
    
    a(chi paramchi, int paramInt)
    {
      a = paramchi;
      b = paramInt;
      c = null;
      d = null;
    }
    
    a(chi paramchi, String paramString, Locale paramLocale)
    {
      a = paramchi;
      b = 0;
      c = paramString;
      d = paramLocale;
    }
    
    public final int a(a parama)
    {
      parama = a;
      int i = cla.a(a.e(), parama.e());
      if (i != 0) {
        return i;
      }
      return cla.a(a.d(), parama.d());
    }
    
    final long a(long paramLong, boolean paramBoolean)
    {
      if (c == null) {}
      for (paramLong = a.b(paramLong, b);; paramLong = a.a(paramLong, c, d))
      {
        long l = paramLong;
        if (paramBoolean) {
          l = a.d(paramLong);
        }
        return l;
      }
    }
  }
  
  final class b
  {
    final chl a = b;
    final Integer b = c;
    final cla.a[] c = f;
    final int d = g;
    
    b() {}
  }
}

/* Location:
 * Qualified Name:     cla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */