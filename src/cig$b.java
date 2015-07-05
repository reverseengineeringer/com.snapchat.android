final class cig$b
  extends cjc
{
  final cgm a;
  final boolean b;
  final cgk c;
  
  cig$b(cgm paramcgm, cgk paramcgk)
  {
    super(paramcgm.a());
    if (!paramcgm.b()) {
      throw new IllegalArgumentException();
    }
    a = paramcgm;
    b = cig.a(paramcgm);
    c = paramcgk;
  }
  
  private int a(long paramLong)
  {
    int i = c.b(paramLong);
    if (((i + paramLong ^ paramLong) < 0L) && ((i ^ paramLong) >= 0L)) {
      throw new ArithmeticException("Adding time zone offset caused overflow");
    }
    return i;
  }
  
  private int b(long paramLong)
  {
    int i = c.c(paramLong);
    if (((paramLong - i ^ paramLong) < 0L) && ((i ^ paramLong) < 0L)) {
      throw new ArithmeticException("Subtracting time zone offset caused overflow");
    }
    return i;
  }
  
  public final long a(long paramLong, int paramInt)
  {
    int i = a(paramLong);
    paramLong = a.a(i + paramLong, paramInt);
    if (b) {}
    for (paramInt = i;; paramInt = b(paramLong)) {
      return paramLong - paramInt;
    }
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    int i = a(paramLong1);
    paramLong1 = a.a(i + paramLong1, paramLong2);
    if (b) {}
    for (;;)
    {
      return paramLong1 - i;
      i = b(paramLong1);
    }
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    int j = a(paramLong2);
    cgm localcgm = a;
    if (b) {}
    for (int i = j;; i = a(paramLong1)) {
      return localcgm.b(i + paramLong1, j + paramLong2);
    }
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    int j = a(paramLong2);
    cgm localcgm = a;
    if (b) {}
    for (int i = j;; i = a(paramLong1)) {
      return localcgm.c(i + paramLong1, j + paramLong2);
    }
  }
  
  public final boolean c()
  {
    if (b) {
      return a.c();
    }
    return (a.c()) && (c.c());
  }
  
  public final long d()
  {
    return a.d();
  }
}

/* Location:
 * Qualified Name:     cig.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */