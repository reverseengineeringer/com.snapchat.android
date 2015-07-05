import java.io.Serializable;

public final class cgg
  extends chg
  implements cgx, Serializable
{
  public cgg() {}
  
  public cgg(long paramLong)
  {
    super(paramLong);
  }
  
  public cgg(long paramLong, cgf paramcgf)
  {
    super(paramLong, paramcgf);
  }
  
  public cgg(long paramLong, cgk paramcgk)
  {
    super(paramLong, paramcgk);
  }
  
  public cgg(cgf paramcgf)
  {
    super(paramcgf);
  }
  
  public cgg(Object paramObject)
  {
    super(paramObject);
  }
  
  public final cgg F_()
  {
    return new cgr(a, b).a(d().a());
  }
  
  public final cgg a()
  {
    return this;
  }
  
  public final cgg a_(long paramLong)
  {
    if (paramLong == a) {
      return this;
    }
    return new cgg(paramLong, b);
  }
  
  public static final class a
    extends cja
  {
    private cgg a;
    private cgh b;
    
    public a(cgg paramcgg, cgh paramcgh)
    {
      a = paramcgg;
      b = paramcgh;
    }
    
    public final cgh a()
    {
      return b;
    }
    
    protected final long b()
    {
      return a.a;
    }
    
    protected final cgf c()
    {
      return a.b;
    }
  }
}

/* Location:
 * Qualified Name:     cgg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */