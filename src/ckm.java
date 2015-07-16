public class ckm
  extends ckn
{
  private final int b;
  private final chn c;
  
  public ckm(chj paramchj, chn paramchn1, chn paramchn2)
  {
    super(paramchj, paramchn1);
    if (!paramchn2.c()) {
      throw new IllegalArgumentException("Range duration field must be precise");
    }
    b = ((int)(paramchn2.d() / a));
    if (b < 2) {
      throw new IllegalArgumentException("The effective range must be at least 2");
    }
    c = paramchn2;
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
    cki.a(this, paramInt, g(), b - 1);
    return (paramInt - a(paramLong)) * a + paramLong;
  }
  
  public final chn e()
  {
    return c;
  }
  
  public final int h()
  {
    return b - 1;
  }
}

/* Location:
 * Qualified Name:     ckm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */