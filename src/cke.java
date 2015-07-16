public abstract class cke
  extends ckc
{
  public final chi b;
  
  public cke(chi paramchi, chj paramchj)
  {
    super(paramchj);
    if (paramchi == null) {
      throw new IllegalArgumentException("The field must not be null");
    }
    if (!paramchi.c()) {
      throw new IllegalArgumentException("The field must be supported");
    }
    b = paramchi;
  }
  
  public int a(long paramLong)
  {
    return b.a(paramLong);
  }
  
  public long b(long paramLong, int paramInt)
  {
    return b.b(paramLong, paramInt);
  }
  
  public long d(long paramLong)
  {
    return b.d(paramLong);
  }
  
  public chn d()
  {
    return b.d();
  }
  
  public chn e()
  {
    return b.e();
  }
  
  public int g()
  {
    return b.g();
  }
  
  public int h()
  {
    return b.h();
  }
}

/* Location:
 * Qualified Name:     cke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */