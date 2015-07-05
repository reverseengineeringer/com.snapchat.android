public abstract class cjd
  extends cjb
{
  public final cgh b;
  
  public cjd(cgh paramcgh, cgi paramcgi)
  {
    super(paramcgi);
    if (paramcgh == null) {
      throw new IllegalArgumentException("The field must not be null");
    }
    if (!paramcgh.c()) {
      throw new IllegalArgumentException("The field must be supported");
    }
    b = paramcgh;
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
  
  public cgm d()
  {
    return b.d();
  }
  
  public cgm e()
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
 * Qualified Name:     cjd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */