final class cjb
  extends cke
{
  private final cim a;
  
  cjb(chi paramchi, cim paramcim)
  {
    super(paramchi, chj.t());
    a = paramcim;
  }
  
  public final int a(long paramLong)
  {
    int j = b.a(paramLong);
    int i = j;
    if (j <= 0) {
      i = 1 - j;
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
    cki.a(this, paramInt, 1, b.h());
    int i = paramInt;
    if (a.a(paramLong) <= 0) {
      i = 1 - paramInt;
    }
    return super.b(paramLong, i);
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
  
  public final int g()
  {
    return 1;
  }
  
  public final int h()
  {
    return b.h();
  }
  
  public final long i(long paramLong)
  {
    return b.i(paramLong);
  }
}

/* Location:
 * Qualified Name:     cjb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */