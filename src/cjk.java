public final class cjk
  extends cjd
{
  private final int a;
  private final int c;
  private final int d;
  
  public cjk(cgh paramcgh, int paramInt) {}
  
  public cjk(cgh paramcgh, cgi paramcgi)
  {
    this(paramcgh, paramcgi, 1);
  }
  
  private cjk(cgh paramcgh, cgi paramcgi, int paramInt)
  {
    super(paramcgh, paramcgi);
    if (paramInt == 0) {
      throw new IllegalArgumentException("The offset cannot be zero");
    }
    a = paramInt;
    if (Integer.MIN_VALUE < paramcgh.g() + paramInt) {}
    for (c = (paramcgh.g() + paramInt); Integer.MAX_VALUE > paramcgh.h() + paramInt; c = Integer.MIN_VALUE)
    {
      d = (paramcgh.h() + paramInt);
      return;
    }
    d = Integer.MAX_VALUE;
  }
  
  public final int a(long paramLong)
  {
    return super.a(paramLong) + a;
  }
  
  public final long a(long paramLong, int paramInt)
  {
    paramLong = super.a(paramLong, paramInt);
    cjh.a(this, a(paramLong), c, d);
    return paramLong;
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    paramLong1 = super.a(paramLong1, paramLong2);
    cjh.a(this, a(paramLong1), c, d);
    return paramLong1;
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cjh.a(this, paramInt, c, d);
    return super.b(paramLong, paramInt - a);
  }
  
  public final boolean b(long paramLong)
  {
    return b.b(paramLong);
  }
  
  public final long d(long paramLong)
  {
    return b.d(paramLong);
  }
  
  public final long e(long paramLong)
  {
    return b.e(paramLong);
  }
  
  public final long f(long paramLong)
  {
    return b.f(paramLong);
  }
  
  public final cgm f()
  {
    return b.f();
  }
  
  public final int g()
  {
    return c;
  }
  
  public final long g(long paramLong)
  {
    return b.g(paramLong);
  }
  
  public final int h()
  {
    return d;
  }
  
  public final long h(long paramLong)
  {
    return b.h(paramLong);
  }
  
  public final long i(long paramLong)
  {
    return b.i(paramLong);
  }
}

/* Location:
 * Qualified Name:     cjk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */