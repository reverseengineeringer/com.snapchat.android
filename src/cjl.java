public class cjl
  extends cjm
{
  private final int b;
  private final cgm c;
  
  public cjl(cgi paramcgi, cgm paramcgm1, cgm paramcgm2)
  {
    super(paramcgi, paramcgm1);
    if (!paramcgm2.c()) {
      throw new IllegalArgumentException("Range duration field must be precise");
    }
    b = ((int)(paramcgm2.d() / a));
    if (b < 2) {
      throw new IllegalArgumentException("The effective range must be at least 2");
    }
    c = paramcgm2;
  }
  
  public final int a(long paramLong)
  {
    if (paramLong >= 0L) {
      return (int)(paramLong / a % b);
    }
    return b - 1 + (int)((1L + paramLong) / a % b);
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cjh.a(this, paramInt, g(), b - 1);
    return (paramInt - a(paramLong)) * a + paramLong;
  }
  
  public final cgm e()
  {
    return c;
  }
  
  public final int h()
  {
    return b - 1;
  }
}

/* Location:
 * Qualified Name:     cjl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */