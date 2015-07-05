final class chr
  extends cjm
{
  private final chl b;
  
  chr(chl paramchl, cgm paramcgm)
  {
    super(cgi.o(), paramcgm);
    b = paramchl;
  }
  
  public final int a(long paramLong)
  {
    return b.c(paramLong);
  }
  
  public final int c(long paramLong)
  {
    int i = b.b(paramLong);
    return b.a(i);
  }
  
  protected final int c(long paramLong, int paramInt)
  {
    int i = 52;
    if (paramInt > 52) {
      i = c(paramLong);
    }
    return i;
  }
  
  public final long d(long paramLong)
  {
    return super.d(paramLong + 259200000L) - 259200000L;
  }
  
  public final long e(long paramLong)
  {
    return super.e(paramLong + 259200000L) - 259200000L;
  }
  
  public final cgm e()
  {
    return b.e;
  }
  
  public final int g()
  {
    return 1;
  }
  
  public final int h()
  {
    return 53;
  }
  
  public final long i(long paramLong)
  {
    return super.i(259200000L + paramLong);
  }
}

/* Location:
 * Qualified Name:     chr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */