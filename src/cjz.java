import java.util.Arrays;
import java.util.Locale;

public final class cjz
{
  final cgf a;
  public cgk b;
  public Integer c;
  Locale d;
  Integer e;
  cjz.a[] f = new cjz.a[8];
  int g;
  boolean h;
  private final long i;
  private int j;
  private Object k;
  
  public cjz(cgf paramcgf, Locale paramLocale, Integer paramInteger, int paramInt)
  {
    paramcgf = cgj.a(paramcgf);
    i = 0L;
    b = paramcgf.a();
    a = paramcgf.b();
    paramcgf = paramLocale;
    if (paramLocale == null) {
      paramcgf = Locale.getDefault();
    }
    d = paramcgf;
    e = paramInteger;
    j = paramInt;
  }
  
  static int a(cgm paramcgm1, cgm paramcgm2)
  {
    if ((paramcgm1 == null) || (!paramcgm1.b()))
    {
      if ((paramcgm2 == null) || (!paramcgm2.b())) {
        return 0;
      }
      return -1;
    }
    if ((paramcgm2 == null) || (!paramcgm2.b())) {
      return 1;
    }
    return -paramcgm1.compareTo(paramcgm2);
  }
  
  public final long a(String paramString)
  {
    cjz.a[] arrayOfa = f;
    int i1 = g;
    if (h)
    {
      arrayOfa = (cjz.a[])f.clone();
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
      localObject2 = cgn.i().a(a);
      cgm localcgm1 = cgn.f().a(a);
      cgm localcgm2 = 0a.d();
      if ((a(localcgm2, (cgm)localObject2) < 0) || (a(localcgm2, localcgm1) > 0)) {
        break label203;
      }
      a(cgi.s(), j);
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
      catch (cgo localcgo)
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
      l2 = ((cjz.a)localObject2).a(l2, bool);
      m += 1;
      break label486;
      boolean bool = false;
      continue;
      label302:
      label305:
      do
      {
        throw localcgo;
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
        throw new cgp((String)localObject1);
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
      k = new cjz.b();
    }
    return k;
  }
  
  public final void a(cgi paramcgi, int paramInt)
  {
    a(new cjz.a(paramcgi.a(a), paramInt));
  }
  
  public final void a(cgk paramcgk)
  {
    k = null;
    b = paramcgk;
  }
  
  final void a(cjz.a parama)
  {
    Object localObject = f;
    int n = g;
    int m;
    if ((n == localObject.length) || (h)) {
      if (n == localObject.length)
      {
        m = n * 2;
        cjz.a[] arrayOfa = new cjz.a[m];
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
    if ((paramObject instanceof cjz.b))
    {
      cjz.b localb = (cjz.b)paramObject;
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
    final cgh a;
    final int b;
    final String c;
    final Locale d;
    
    a(cgh paramcgh, int paramInt)
    {
      a = paramcgh;
      b = paramInt;
      c = null;
      d = null;
    }
    
    a(cgh paramcgh, String paramString, Locale paramLocale)
    {
      a = paramcgh;
      b = 0;
      c = paramString;
      d = paramLocale;
    }
    
    public final int a(a parama)
    {
      parama = a;
      int i = cjz.a(a.e(), parama.e());
      if (i != 0) {
        return i;
      }
      return cjz.a(a.d(), parama.d());
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
    final cgk a = b;
    final Integer b = c;
    final cjz.a[] c = f;
    final int d = g;
    
    b() {}
  }
}

/* Location:
 * Qualified Name:     cjz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */