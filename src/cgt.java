import java.io.Serializable;
import org.joda.convert.ToString;

public final class cgt
  extends chg
  implements cgv, Serializable, Cloneable
{
  private cgh c;
  private int d;
  
  public cgt() {}
  
  public cgt(long paramLong, cgf paramcgf)
  {
    super(paramLong, paramcgf);
  }
  
  public cgt(long paramLong, cgk paramcgk)
  {
    super(paramLong, paramcgk);
  }
  
  public final void a(long paramLong)
  {
    long l = paramLong;
    switch (d)
    {
    default: 
      l = paramLong;
    }
    for (;;)
    {
      super.a(l);
      return;
      l = c.d(paramLong);
      continue;
      l = c.e(paramLong);
      continue;
      l = c.f(paramLong);
      continue;
      l = c.g(paramLong);
      continue;
      l = c.h(paramLong);
    }
  }
  
  public final void a(cgf paramcgf)
  {
    super.a(paramcgf);
  }
  
  public final void a(cgk paramcgk)
  {
    paramcgk = cgj.a(paramcgk);
    cgk localcgk = cgj.a(d().a());
    if (paramcgk == localcgk) {
      return;
    }
    long l = localcgk.a(paramcgk, a);
    super.a(b.a(paramcgk));
    a(l);
  }
  
  public final Object clone()
  {
    try
    {
      Object localObject = super.clone();
      return localObject;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new InternalError("Clone error");
    }
  }
  
  @ToString
  public final String toString()
  {
    return ckc.a.b().a(this);
  }
  
  public static final class a
    extends cja
  {
    public cgt a;
    public cgh b;
    
    public a(cgt paramcgt, cgh paramcgh)
    {
      a = paramcgt;
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
 * Qualified Name:     cgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */