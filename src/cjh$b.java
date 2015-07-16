final class cjh$b
  extends ckd
{
  final chn a;
  final boolean b;
  final chl c;
  
  cjh$b(chn paramchn, chl paramchl)
  {
    super(paramchn.a());
    if (!paramchn.b()) {
      throw new IllegalArgumentException();
    }
    a = paramchn;
    b = cjh.a(paramchn);
    c = paramchl;
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
    chn localchn = a;
    if (b) {}
    for (int i = j;; i = a(paramLong1)) {
      return localchn.b(i + paramLong1, j + paramLong2);
    }
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    int j = a(paramLong2);
    chn localchn = a;
    if (b) {}
    for (int i = j;; i = a(paramLong1)) {
      return localchn.c(i + paramLong1, j + paramLong2);
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
 * Qualified Name:     cjh.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */