import java.util.Locale;

final class cig$a
  extends cjb
{
  final cgh a;
  final cgk b;
  final cgm c;
  final boolean d;
  final cgm e;
  final cgm f;
  
  cig$a(cgh paramcgh, cgk paramcgk, cgm paramcgm1, cgm paramcgm2, cgm paramcgm3)
  {
    super(paramcgh.a());
    if (!paramcgh.c()) {
      throw new IllegalArgumentException();
    }
    a = paramcgh;
    b = paramcgk;
    c = paramcgm1;
    d = cig.a(paramcgm1);
    e = paramcgm2;
    f = paramcgm3;
  }
  
  private int j(long paramLong)
  {
    int i = b.b(paramLong);
    if (((i + paramLong ^ paramLong) < 0L) && ((i ^ paramLong) >= 0L)) {
      throw new ArithmeticException("Adding time zone offset caused overflow");
    }
    return i;
  }
  
  public final int a(long paramLong)
  {
    paramLong = b.d(paramLong);
    return a.a(paramLong);
  }
  
  public final int a(Locale paramLocale)
  {
    return a.a(paramLocale);
  }
  
  public final long a(long paramLong, int paramInt)
  {
    if (d)
    {
      int i = j(paramLong);
      return a.a(i + paramLong, paramInt) - i;
    }
    long l = b.d(paramLong);
    l = a.a(l, paramInt);
    return b.a(l, paramLong);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    if (d)
    {
      int i = j(paramLong1);
      return a.a(i + paramLong1, paramLong2) - i;
    }
    long l = b.d(paramLong1);
    paramLong2 = a.a(l, paramLong2);
    return b.a(paramLong2, paramLong1);
  }
  
  public final long a(long paramLong, String paramString, Locale paramLocale)
  {
    long l = b.d(paramLong);
    l = a.a(l, paramString, paramLocale);
    return b.a(l, paramLong);
  }
  
  public final String a(int paramInt, Locale paramLocale)
  {
    return a.a(paramInt, paramLocale);
  }
  
  public final String a(long paramLong, Locale paramLocale)
  {
    paramLong = b.d(paramLong);
    return a.a(paramLong, paramLocale);
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    int j = j(paramLong2);
    cgh localcgh = a;
    if (d) {}
    for (int i = j;; i = j(paramLong1)) {
      return localcgh.b(i + paramLong1, j + paramLong2);
    }
  }
  
  public final long b(long paramLong, int paramInt)
  {
    long l = b.d(paramLong);
    l = a.b(l, paramInt);
    paramLong = b.a(l, paramLong);
    if (a(paramLong) != paramInt)
    {
      cgp localcgp = new cgp(l, b.c);
      cgo localcgo = new cgo(a.a(), Integer.valueOf(paramInt), localcgp.getMessage());
      localcgo.initCause(localcgp);
      throw localcgo;
    }
    return paramLong;
  }
  
  public final String b(int paramInt, Locale paramLocale)
  {
    return a.b(paramInt, paramLocale);
  }
  
  public final String b(long paramLong, Locale paramLocale)
  {
    paramLong = b.d(paramLong);
    return a.b(paramLong, paramLocale);
  }
  
  public final boolean b(long paramLong)
  {
    paramLong = b.d(paramLong);
    return a.b(paramLong);
  }
  
  public final int c(long paramLong)
  {
    paramLong = b.d(paramLong);
    return a.c(paramLong);
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    int j = j(paramLong2);
    cgh localcgh = a;
    if (d) {}
    for (int i = j;; i = j(paramLong1)) {
      return localcgh.c(i + paramLong1, j + paramLong2);
    }
  }
  
  public final long d(long paramLong)
  {
    if (d)
    {
      int i = j(paramLong);
      return a.d(i + paramLong) - i;
    }
    long l = b.d(paramLong);
    l = a.d(l);
    return b.a(l, paramLong);
  }
  
  public final cgm d()
  {
    return c;
  }
  
  public final long e(long paramLong)
  {
    if (d)
    {
      int i = j(paramLong);
      return a.e(i + paramLong) - i;
    }
    long l = b.d(paramLong);
    l = a.e(l);
    return b.a(l, paramLong);
  }
  
  public final cgm e()
  {
    return e;
  }
  
  public final cgm f()
  {
    return f;
  }
  
  public final int g()
  {
    return a.g();
  }
  
  public final int h()
  {
    return a.h();
  }
  
  public final long i(long paramLong)
  {
    paramLong = b.d(paramLong);
    return a.i(paramLong);
  }
}

/* Location:
 * Qualified Name:     cig.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */