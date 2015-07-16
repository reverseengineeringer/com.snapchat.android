public final class ckp
  extends cke
{
  final int a;
  final chn c;
  
  public ckp(chi paramchi, chj paramchj)
  {
    super(paramchi, paramchj);
    paramchi = paramchi.d();
    if (paramchi == null) {}
    for (c = null;; c = new ckq(paramchi, paramchj.y()))
    {
      a = 100;
      return;
    }
  }
  
  public ckp(ckh paramckh)
  {
    this(paramckh, i);
  }
  
  public ckp(ckh paramckh, chj paramchj)
  {
    super(b, paramchj);
    a = a;
    c = c;
  }
  
  public final int a(long paramLong)
  {
    int i = b.a(paramLong);
    if (i >= 0) {
      return i % a;
    }
    int j = a;
    return (i + 1) % a + (j - 1);
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cki.a(this, paramInt, 0, a - 1);
    int i = b.a(paramLong);
    if (i >= 0) {
      i /= a;
    }
    for (;;)
    {
      return b.b(paramLong, i * a + paramInt);
      i = (i + 1) / a - 1;
    }
  }
  
  public final long d(long paramLong)
  {
    return b.d(paramLong);
  }
  
  public final long e(long paramLong)
  {
    return b.e(paramLong);
  }
  
  public final chn e()
  {
    return c;
  }
  
  public final long f(long paramLong)
  {
    return b.f(paramLong);
  }
  
  public final int g()
  {
    return 0;
  }
  
  public final long g(long paramLong)
  {
    return b.g(paramLong);
  }
  
  public final int h()
  {
    return a - 1;
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
 * Qualified Name:     ckp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */