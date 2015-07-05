public final class cjg
  extends cjd
{
  final int a;
  final cgm c;
  private final int d;
  private final int e;
  
  public cjg(cgh paramcgh, cgi paramcgi)
  {
    super(paramcgh, paramcgi);
    cgm localcgm = paramcgh.d();
    int i;
    label42:
    int j;
    if (localcgm == null)
    {
      c = null;
      a = 100;
      i = paramcgh.g();
      if (i < 0) {
        break label92;
      }
      i /= 100;
      j = paramcgh.h();
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
      c = new cjp(localcgm, paramcgi.x());
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
    cjh.a(this, paramInt, d, e);
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
    cgh localcgh = b;
    return localcgh.d(localcgh.b(paramLong, a(paramLong) * a));
  }
  
  public final cgm d()
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
 * Qualified Name:     cjg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */