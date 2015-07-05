final class chn
  extends cjm
{
  private final chl b;
  
  chn(chl paramchl, cgm paramcgm)
  {
    super(cgi.n(), paramcgm);
    b = paramchl;
  }
  
  public final int a(long paramLong)
  {
    chl localchl = b;
    return localchl.b(paramLong, localchl.a(paramLong));
  }
  
  public final int c(long paramLong)
  {
    int i = b.a(paramLong);
    if (b.c(i)) {
      return 366;
    }
    return 365;
  }
  
  protected final int c(long paramLong, int paramInt)
  {
    int i = 365;
    chl.L();
    if ((paramInt > 365) || (paramInt <= 0)) {
      i = c(paramLong);
    }
    return i;
  }
  
  public final cgm e()
  {
    return b.g;
  }
  
  public final int g()
  {
    return 1;
  }
  
  public final int h()
  {
    return chl.L();
  }
}

/* Location:
 * Qualified Name:     chn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */