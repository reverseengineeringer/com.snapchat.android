class chp
  extends cji
{
  private final chl a;
  private final int c;
  private final int d;
  
  chp(chl paramchl)
  {
    super(cgi.r(), paramchl.S());
    a = paramchl;
    c = chl.P();
    d = 2;
  }
  
  public final int a(long paramLong)
  {
    chl localchl = a;
    return localchl.a(paramLong, localchl.a(paramLong));
  }
  
  public final long a(long paramLong, int paramInt)
  {
    if (paramInt == 0) {
      return paramLong;
    }
    long l = chl.e(paramLong);
    int m = a.a(paramLong);
    int n = a.a(paramLong, m);
    int i = n - 1 + paramInt;
    int j;
    int k;
    if (i >= 0)
    {
      paramInt = i / c + m;
      i = i % c + 1;
      j = a.a(paramLong, m, n);
      k = a.b(paramInt, i);
      if (j <= k) {
        break label197;
      }
      j = k;
    }
    label197:
    for (;;)
    {
      return a.a(paramInt, i, j) + l;
      j = i / c + m - 1;
      i = Math.abs(i) % c;
      paramInt = i;
      if (i == 0) {
        paramInt = c;
      }
      k = c - paramInt + 1;
      i = k;
      paramInt = j;
      if (k != 1) {
        break;
      }
      paramInt = j + 1;
      i = k;
      break;
    }
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    int i = (int)paramLong2;
    if (i == paramLong2) {
      return a(paramLong1, i);
    }
    long l5 = chl.e(paramLong1);
    int n = a.a(paramLong1);
    int i1 = a.a(paramLong1, n);
    long l2 = i1 - 1 + paramLong2;
    long l1;
    if (l2 >= 0L)
    {
      l1 = n + l2 / c;
      l2 = l2 % c + 1L;
    }
    while ((l1 < a.N()) || (l1 > a.O()))
    {
      throw new IllegalArgumentException("Magnitude of add amount is too large: " + paramLong2);
      long l3 = n + l2 / c - 1L;
      j = (int)(Math.abs(l2) % c);
      i = j;
      if (j == 0) {
        i = c;
      }
      long l4 = c - i + 1;
      l2 = l4;
      l1 = l3;
      if (l4 == 1L)
      {
        l1 = l3 + 1L;
        l2 = l4;
      }
    }
    int k = (int)l1;
    int m = (int)l2;
    i = a.a(paramLong1, n, i1);
    int j = a.b(k, m);
    if (i > j) {
      i = j;
    }
    for (;;)
    {
      return a.a(k, m, i) + l5;
    }
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cjh.a(this, paramInt, 1, c);
    int k = a.a(paramLong);
    chl localchl = a;
    int i = localchl.a(paramLong, k, localchl.a(paramLong, k));
    int j = a.b(k, paramInt);
    if (i > j) {
      i = j;
    }
    for (;;)
    {
      return a.a(k, paramInt, i) + chl.e(paramLong);
    }
  }
  
  public final boolean b(long paramLong)
  {
    boolean bool2 = false;
    int i = a.a(paramLong);
    boolean bool1 = bool2;
    if (a.c(i))
    {
      bool1 = bool2;
      if (a.a(paramLong, i) == d) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    if (paramLong1 < paramLong2) {
      paramLong2 = -b(paramLong2, paramLong1);
    }
    int i;
    int j;
    int k;
    int m;
    long l2;
    long l1;
    do
    {
      return paramLong2;
      i = a.a(paramLong1);
      j = a.a(paramLong1, i);
      k = a.a(paramLong2);
      m = a.a(paramLong2, k);
      l2 = (i - k) * c + j - m;
      int n = a.a(paramLong1, i, j);
      l1 = paramLong2;
      if (n == a.b(i, j))
      {
        l1 = paramLong2;
        if (a.a(paramLong2, k, m) > n) {
          l1 = a.t.b(paramLong2, n);
        }
      }
      paramLong2 = l2;
    } while (paramLong1 - a.a(i, j) >= l1 - a.a(k, m));
    return l2 - 1L;
  }
  
  public final long d(long paramLong)
  {
    int i = a.a(paramLong);
    int j = a.a(paramLong, i);
    return a.a(i, j);
  }
  
  public final cgm e()
  {
    return a.g;
  }
  
  public final cgm f()
  {
    return a.c;
  }
  
  public final int g()
  {
    return 1;
  }
  
  public final int h()
  {
    return c;
  }
  
  public final long i(long paramLong)
  {
    return paramLong - d(paramLong);
  }
}

/* Location:
 * Qualified Name:     chp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */