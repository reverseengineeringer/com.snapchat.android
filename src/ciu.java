final class ciu
  extends ckj
{
  protected final cim a;
  
  ciu(cim paramcim)
  {
    super(chj.s(), paramcim.Q());
    a = paramcim;
  }
  
  public final int a(long paramLong)
  {
    return a.a(paramLong);
  }
  
  public final long a(long paramLong, int paramInt)
  {
    if (paramInt == 0) {
      return paramLong;
    }
    int i = a(paramLong);
    int j = i + paramInt;
    if (((i ^ j) < 0) && ((i ^ paramInt) >= 0)) {
      throw new ArithmeticException("The calculation caused an overflow: " + i + " + " + paramInt);
    }
    return b(paramLong, j);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    return a(paramLong1, cki.a(paramLong2));
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cki.a(this, paramInt, a.N(), a.O());
    return a.d(paramLong, paramInt);
  }
  
  public final boolean b(long paramLong)
  {
    return a.c(a(paramLong));
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    if (paramLong1 < paramLong2) {
      return -a.a(paramLong2, paramLong1);
    }
    return a.a(paramLong1, paramLong2);
  }
  
  public final long d(long paramLong)
  {
    return a.b(a(paramLong));
  }
  
  public final long e(long paramLong)
  {
    int i = a(paramLong);
    long l = paramLong;
    if (paramLong != a.b(i)) {
      l = a.b(i + 1);
    }
    return l;
  }
  
  public final chn e()
  {
    return null;
  }
  
  public final chn f()
  {
    return a.c;
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
 * Qualified Name:     ciu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */