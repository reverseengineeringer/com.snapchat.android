public abstract class ckn
  extends ckc
{
  final long a;
  private final chn b;
  
  public ckn(chj paramchj, chn paramchn)
  {
    super(paramchj);
    if (!paramchn.c()) {
      throw new IllegalArgumentException("Unit duration field must be precise");
    }
    a = paramchn.d();
    if (a < 1L) {
      throw new IllegalArgumentException("The unit milliseconds must be at least 1");
    }
    b = paramchn;
  }
  
  public long b(long paramLong, int paramInt)
  {
    cki.a(this, paramInt, g(), c(paramLong, paramInt));
    return (paramInt - a(paramLong)) * a + paramLong;
  }
  
  public int c(long paramLong, int paramInt)
  {
    return c(paramLong);
  }
  
  public long d(long paramLong)
  {
    if (paramLong >= 0L) {
      return paramLong - paramLong % a;
    }
    paramLong = 1L + paramLong;
    return paramLong - paramLong % a - a;
  }
  
  public final chn d()
  {
    return b;
  }
  
  public long e(long paramLong)
  {
    if (paramLong > 0L)
    {
      paramLong -= 1L;
      return paramLong - paramLong % a + a;
    }
    return paramLong - paramLong % a;
  }
  
  public int g()
  {
    return 0;
  }
  
  public long i(long paramLong)
  {
    if (paramLong >= 0L) {
      return paramLong % a;
    }
    return (paramLong + 1L) % a + a - 1L;
  }
}

/* Location:
 * Qualified Name:     ckn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */