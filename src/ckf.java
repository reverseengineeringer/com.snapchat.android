public class ckf
  extends ckd
{
  public final chn b;
  
  public ckf(chn paramchn, cho paramcho)
  {
    super(paramcho);
    if (paramchn == null) {
      throw new IllegalArgumentException("The field must not be null");
    }
    if (!paramchn.b()) {
      throw new IllegalArgumentException("The field must be supported");
    }
    b = paramchn;
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
 * Qualified Name:     ckf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */