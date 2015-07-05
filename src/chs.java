final class chs
  extends cji
{
  private final chl a;
  
  chs(chl paramchl)
  {
    super(cgi.p(), paramchl.Q());
    a = paramchl;
  }
  
  public final int a(long paramLong)
  {
    return a.b(paramLong);
  }
  
  public final long a(long paramLong, int paramInt)
  {
    if (paramInt == 0) {
      return paramLong;
    }
    return b(paramLong, a(paramLong) + paramInt);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    return a(paramLong1, cjh.a(paramLong2));
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cjh.a(this, Math.abs(paramInt), a.N(), a.O());
    int i = a(paramLong);
    if (i == paramInt) {
      return paramLong;
    }
    int k = chl.d(paramLong);
    i = a.a(i);
    int j = a.a(paramInt);
    if (j < i)
    {
      i = j;
      j = a.c(paramLong);
      if (j <= i) {
        break label181;
      }
    }
    for (;;)
    {
      long l = a.d(paramLong, paramInt);
      j = a(l);
      if (j < paramInt) {
        paramLong = l + 604800000L;
      }
      for (;;)
      {
        l = i - a.c(paramLong);
        return a.s.b(l * 604800000L + paramLong, k);
        break;
        paramLong = l;
        if (j > paramInt) {
          paramLong = l - 604800000L;
        }
      }
      label181:
      i = j;
    }
  }
  
  public final boolean b(long paramLong)
  {
    return a.a(a.b(paramLong)) > 52;
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    if (paramLong1 < paramLong2) {
      return -b(paramLong2, paramLong1);
    }
    int i = a(paramLong1);
    int j = a(paramLong2);
    long l = d(paramLong1);
    paramLong2 -= d(paramLong2);
    if ((paramLong2 >= 31449600000L) && (a.a(i) <= 52)) {
      paramLong2 -= 604800000L;
    }
    for (;;)
    {
      j = i - j;
      i = j;
      if (paramLong1 - l < paramLong2) {
        i = j - 1;
      }
      return i;
    }
  }
  
  public final long d(long paramLong)
  {
    long l = a.v.d(paramLong);
    int i = a.c(l);
    paramLong = l;
    if (i > 1) {
      paramLong = l - (i - 1) * 604800000L;
    }
    return paramLong;
  }
  
  public final cgm e()
  {
    return null;
  }
  
  public final cgm f()
  {
    return a.d;
  }
  
  public final int g()
  {
    return a.N();
  }
  
  public final int h()
  {
    return a.O();
  }
  
  public final long i(long paramLong)
  {
    return paramLong - d(paramLong);
  }
}

/* Location:
 * Qualified Name:     chs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */