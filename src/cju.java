public final class cju
  extends cjd
{
  public cju(cgh paramcgh, cgi paramcgi)
  {
    super(paramcgh, paramcgi);
    if (paramcgh.g() != 0) {
      throw new IllegalArgumentException("Wrapped field's minumum value must be zero");
    }
  }
  
  public final int a(long paramLong)
  {
    int j = b.a(paramLong);
    int i = j;
    if (j == 0) {
      i = h();
    }
    return i;
  }
  
  public final long a(long paramLong, int paramInt)
  {
    return b.a(paramLong, paramInt);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    return b.a(paramLong1, paramLong2);
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    return b.b(paramLong1, paramLong2);
  }
  
  public final long b(long paramLong, int paramInt)
  {
    int j = h();
    cjh.a(this, paramInt, 1, j);
    int i = paramInt;
    if (paramInt == j) {
      i = 0;
    }
    return b.b(paramLong, i);
  }
  
  public final boolean b(long paramLong)
  {
    return b.b(paramLong);
  }
  
  public final int c(long paramLong)
  {
    return b.c(paramLong) + 1;
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    return b.c(paramLong1, paramLong2);
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
    return 1;
  }
  
  public final long g(long paramLong)
  {
    return b.g(paramLong);
  }
  
  public final int h()
  {
    return b.h() + 1;
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
 * Qualified Name:     cju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */