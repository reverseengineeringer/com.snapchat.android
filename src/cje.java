public class cje
  extends cjc
{
  public final cgm b;
  
  public cje(cgm paramcgm, cgn paramcgn)
  {
    super(paramcgn);
    if (paramcgm == null) {
      throw new IllegalArgumentException("The field must not be null");
    }
    if (!paramcgm.b()) {
      throw new IllegalArgumentException("The field must be supported");
    }
    b = paramcgm;
  }
  
  public long a(long paramLong, int paramInt)
  {
    return b.a(paramLong, paramInt);
  }
  
  public long a(long paramLong1, long paramLong2)
  {
    return b.a(paramLong1, paramLong2);
  }
  
  public long c(long paramLong1, long paramLong2)
  {
    return b.c(paramLong1, paramLong2);
  }
  
  public final boolean c()
  {
    return b.c();
  }
  
  public long d()
  {
    return b.d();
  }
}

/* Location:
 * Qualified Name:     cje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */