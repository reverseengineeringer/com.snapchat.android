import java.util.Locale;

class ciw$a
  extends ckc
{
  final chi a;
  final chi b;
  final long c;
  final boolean d;
  protected chn e;
  protected chn f;
  
  ciw$a(ciw paramciw, chi paramchi1, chi paramchi2, long paramLong)
  {
    this(paramciw, paramchi1, paramchi2, paramLong, false);
  }
  
  ciw$a(ciw paramciw, chi paramchi1, chi paramchi2, long paramLong, boolean paramBoolean)
  {
    super(paramchi2.a());
    a = paramchi1;
    b = paramchi2;
    c = paramLong;
    d = paramBoolean;
    e = paramchi2.d();
    paramchi2 = paramchi2.e();
    paramciw = paramchi2;
    if (paramchi2 == null) {
      paramciw = paramchi1.e();
    }
    f = paramciw;
  }
  
  public final int a(long paramLong)
  {
    if (paramLong >= c) {
      return b.a(paramLong);
    }
    return a.a(paramLong);
  }
  
  public final int a(Locale paramLocale)
  {
    return Math.max(a.a(paramLocale), b.a(paramLocale));
  }
  
  public long a(long paramLong, int paramInt)
  {
    return b.a(paramLong, paramInt);
  }
  
  public long a(long paramLong1, long paramLong2)
  {
    return b.a(paramLong1, paramLong2);
  }
  
  public final long a(long paramLong, String paramString, Locale paramLocale)
  {
    long l;
    if (paramLong >= c)
    {
      l = b.a(paramLong, paramString, paramLocale);
      paramLong = l;
      if (l < c)
      {
        paramLong = l;
        if (ciw.a(g) + l < c) {
          paramLong = k(l);
        }
      }
    }
    do
    {
      do
      {
        return paramLong;
        l = a.a(paramLong, paramString, paramLocale);
        paramLong = l;
      } while (l < c);
      paramLong = l;
    } while (l - ciw.a(g) < c);
    return j(l);
  }
  
  public final String a(int paramInt, Locale paramLocale)
  {
    return b.a(paramInt, paramLocale);
  }
  
  public final String a(long paramLong, Locale paramLocale)
  {
    if (paramLong >= c) {
      return b.a(paramLong, paramLocale);
    }
    return a.a(paramLong, paramLocale);
  }
  
  public int b(long paramLong1, long paramLong2)
  {
    return b.b(paramLong1, paramLong2);
  }
  
  public final long b(long paramLong, int paramInt)
  {
    long l2;
    long l1;
    if (paramLong >= c)
    {
      l2 = b.b(paramLong, paramInt);
      paramLong = l2;
      if (l2 < c)
      {
        l1 = l2;
        if (ciw.a(g) + l2 < c) {
          l1 = k(l2);
        }
        paramLong = l1;
        if (a(l1) != paramInt) {
          throw new chp(b.a(), Integer.valueOf(paramInt), null, null);
        }
      }
    }
    else
    {
      l2 = a.b(paramLong, paramInt);
      paramLong = l2;
      if (l2 >= c)
      {
        l1 = l2;
        if (l2 - ciw.a(g) >= c) {
          l1 = j(l2);
        }
        paramLong = l1;
        if (a(l1) != paramInt) {
          throw new chp(a.a(), Integer.valueOf(paramInt), null, null);
        }
      }
    }
    return paramLong;
  }
  
  public final String b(int paramInt, Locale paramLocale)
  {
    return b.b(paramInt, paramLocale);
  }
  
  public final String b(long paramLong, Locale paramLocale)
  {
    if (paramLong >= c) {
      return b.b(paramLong, paramLocale);
    }
    return a.b(paramLong, paramLocale);
  }
  
  public final boolean b(long paramLong)
  {
    if (paramLong >= c) {
      return b.b(paramLong);
    }
    return a.b(paramLong);
  }
  
  public int c(long paramLong)
  {
    int i;
    if (paramLong >= c) {
      i = b.c(paramLong);
    }
    int j;
    do
    {
      return i;
      j = a.c(paramLong);
      i = j;
    } while (a.b(paramLong, j) < c);
    return a.a(a.a(c, -1));
  }
  
  public long c(long paramLong1, long paramLong2)
  {
    return b.c(paramLong1, paramLong2);
  }
  
  public final long d(long paramLong)
  {
    if (paramLong >= c)
    {
      long l = b.d(paramLong);
      paramLong = l;
      if (l < c)
      {
        paramLong = l;
        if (ciw.a(g) + l < c) {
          paramLong = k(l);
        }
      }
      return paramLong;
    }
    return a.d(paramLong);
  }
  
  public final chn d()
  {
    return e;
  }
  
  public final long e(long paramLong)
  {
    if (paramLong >= c) {
      paramLong = b.e(paramLong);
    }
    long l;
    do
    {
      do
      {
        return paramLong;
        l = a.e(paramLong);
        paramLong = l;
      } while (l < c);
      paramLong = l;
    } while (l - ciw.a(g) < c);
    return j(l);
  }
  
  public final chn e()
  {
    return f;
  }
  
  public final chn f()
  {
    return b.f();
  }
  
  public final int g()
  {
    return a.g();
  }
  
  public final int h()
  {
    return b.h();
  }
  
  protected final long j(long paramLong)
  {
    if (d)
    {
      ciw localciw = g;
      return ciw.b(paramLong, F, G);
    }
    return g.a(paramLong);
  }
  
  protected final long k(long paramLong)
  {
    if (d)
    {
      localciw = g;
      return ciw.b(paramLong, G, F);
    }
    ciw localciw = g;
    return ciw.a(paramLong, G, F);
  }
}

/* Location:
 * Qualified Name:     ciw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */