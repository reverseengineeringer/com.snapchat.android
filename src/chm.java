final class chm
  extends cjm
{
  private final chl b;
  
  chm(chl paramchl, cgm paramcgm)
  {
    super(cgi.m(), paramcgm);
    b = paramchl;
  }
  
  public final int a(long paramLong)
  {
    chl localchl = b;
    int i = localchl.a(paramLong);
    return localchl.a(paramLong, i, localchl.a(paramLong, i));
  }
  
  public final int c(long paramLong)
  {
    return b.f(paramLong);
  }
  
  protected final int c(long paramLong, int paramInt)
  {
    return b.c(paramLong, paramInt);
  }
  
  public final cgm e()
  {
    return b.f;
  }
  
  public final int g()
  {
    return 1;
  }
  
  public final int h()
  {
    return chl.M();
  }
}

/* Location:
 * Qualified Name:     chm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */