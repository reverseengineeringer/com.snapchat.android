public abstract class cjm
  extends cjb
{
  final long a;
  private final cgm b;
  
  public cjm(cgi paramcgi, cgm paramcgm)
  {
    super(paramcgi);
    if (!paramcgm.c()) {
      throw new IllegalArgumentException("Unit duration field must be precise");
    }
    a = paramcgm.d();
    if (a < 1L) {
      throw new IllegalArgumentException("The unit milliseconds must be at least 1");
    }
    b = paramcgm;
  }
  
  public long b(long paramLong, int paramInt)
  {
    cjh.a(this, paramInt, g(), c(paramLong, paramInt));
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
  
  public final cgm d()
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
 * Qualified Name:     cjm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */