public final class ckh
  extends cke
{
  final int a;
  final chn c;
  private final int d;
  private final int e;
  
  public ckh(chi paramchi, chj paramchj)
  {
    super(paramchi, paramchj);
    chn localchn = paramchi.d();
    int i;
    label42:
    int j;
    if (localchn == null)
    {
      c = null;
      a = 100;
      i = paramchi.g();
      if (i < 0) {
        break label92;
      }
      i /= 100;
      j = paramchi.h();
      if (j < 0) {
        break label104;
      }
      j /= 100;
    }
    for (;;)
    {
      d = i;
      e = j;
      return;
      c = new ckq(localchn, paramchj.x());
      break;
      label92:
      i = (i + 1) / 100 - 1;
      break label42;
      label104:
      j = (j + 1) / 100 - 1;
    }
  }
  
  public final int a(long paramLong)
  {
    int i = b.a(paramLong);
    if (i >= 0) {
      return i / a;
    }
    return (i + 1) / a - 1;
  }
  
  public final long a(long paramLong, int paramInt)
  {
    return b.a(paramLong, a * paramInt);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    return b.a(paramLong1, a * paramLong2);
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    return b.b(paramLong1, paramLong2) / a;
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cki.a(this, paramInt, d, e);
    int i = b.a(paramLong);
    if (i >= 0) {
      i %= a;
    }
    for (;;)
    {
      return b.b(paramLong, i + a * paramInt);
      int j = a;
      i = (i + 1) % a + (j - 1);
    }
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    return b.c(paramLong1, paramLong2) / a;
  }
  
  public final long d(long paramLong)
  {
    chi localchi = b;
    return localchi.d(localchi.b(paramLong, a(paramLong) * a));
  }
  
  public final chn d()
  {
    return c;
  }
  
  public final int g()
  {
    return d;
  }
  
  public final int h()
  {
    return e;
  }
  
  public final long i(long paramLong)
  {
    return b(paramLong, a(b.i(paramLong)));
  }
}

/* Location:
 * Qualified Name:     ckh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */