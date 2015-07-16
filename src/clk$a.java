final class clk$a
  extends chl
{
  final int d;
  final clk.d e;
  final clk.d f;
  
  clk$a(String paramString, int paramInt, clk.d paramd1, clk.d paramd2)
  {
    super(paramString);
    d = paramInt;
    e = paramd1;
    f = paramd2;
  }
  
  private clk.d h(long paramLong)
  {
    int i = d;
    clk.d locald1 = e;
    clk.d locald2 = f;
    try
    {
      l1 = locald1.a(paramLong, i, c);
      try
      {
        long l2 = locald2.a(paramLong, i, c);
        paramLong = l2;
      }
      catch (ArithmeticException localArithmeticException2)
      {
        for (;;) {}
      }
      catch (IllegalArgumentException localIllegalArgumentException2)
      {
        for (;;) {}
      }
      if (l1 > paramLong) {
        return locald1;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException1)
    {
      for (;;)
      {
        l1 = paramLong;
      }
    }
    catch (ArithmeticException localArithmeticException1)
    {
      for (;;)
      {
        long l1 = paramLong;
      }
    }
    return locald2;
  }
  
  public final String a(long paramLong)
  {
    return hb;
  }
  
  public final int b(long paramLong)
  {
    return d + hc;
  }
  
  public final boolean c()
  {
    return false;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof a)) {
        break;
      }
      paramObject = (a)paramObject;
    } while ((c.equals(c)) && (d == d) && (e.equals(e)) && (f.equals(f)));
    return false;
    return false;
  }
  
  public final long f(long paramLong)
  {
    int i = d;
    clk.d locald1 = e;
    clk.d locald2 = f;
    for (;;)
    {
      long l2;
      long l1;
      try
      {
        l2 = locald1.a(paramLong, i, c);
        l1 = l2;
        if (paramLong > 0L)
        {
          l1 = l2;
          if (l2 < 0L) {
            l1 = paramLong;
          }
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException2)
      {
        l1 = paramLong;
        continue;
      }
      catch (ArithmeticException localArithmeticException2)
      {
        l1 = paramLong;
        continue;
      }
      try
      {
        l2 = locald2.a(paramLong, i, c);
        if ((paramLong <= 0L) || (l2 >= 0L)) {
          break label120;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        continue;
      }
      catch (ArithmeticException localArithmeticException1)
      {
        continue;
      }
      if (l1 > paramLong) {
        return paramLong;
      }
      return l1;
      label120:
      paramLong = l2;
    }
  }
  
  public final long g(long paramLong)
  {
    paramLong += 1L;
    int i = d;
    clk.d locald1 = e;
    clk.d locald2 = f;
    try
    {
      l2 = locald1.b(paramLong, i, c);
      l1 = l2;
      if (paramLong < 0L)
      {
        l1 = l2;
        if (l2 > 0L) {
          l1 = paramLong;
        }
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException2)
    {
      for (;;)
      {
        l1 = paramLong;
      }
    }
    catch (ArithmeticException localArithmeticException2)
    {
      for (;;)
      {
        label86:
        long l1 = paramLong;
      }
    }
    try
    {
      l2 = locald2.b(paramLong, i, c);
      if ((paramLong >= 0L) || (l2 <= 0L)) {
        break label131;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException1)
    {
      break label86;
    }
    catch (ArithmeticException localArithmeticException1)
    {
      break label86;
      paramLong = l2;
      break label86;
    }
    l2 = paramLong;
    if (l1 > paramLong) {
      l2 = l1;
    }
    return l2 - 1L;
  }
}

/* Location:
 * Qualified Name:     clk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */