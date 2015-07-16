final class cio
  extends ckn
{
  private final cim b;
  
  cio(cim paramcim, chn paramchn)
  {
    super(chj.n(), paramchn);
    b = paramcim;
  }
  
  public final int a(long paramLong)
  {
    cim localcim = b;
    return localcim.b(paramLong, localcim.a(paramLong));
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
    cim.L();
    if ((paramInt > 365) || (paramInt <= 0)) {
      i = c(paramLong);
    }
    return i;
  }
  
  public final chn e()
  {
    return b.g;
  }
  
  public final int g()
  {
    return 1;
  }
  
  public final int h()
  {
    return cim.L();
  }
}

/* Location:
 * Qualified Name:     cio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */