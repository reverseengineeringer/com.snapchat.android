import java.io.Serializable;
import org.joda.convert.ToString;

public final class chu
  extends cih
  implements chw, Serializable, Cloneable
{
  private chi c;
  private int d;
  
  public chu() {}
  
  public chu(long paramLong, chg paramchg)
  {
    super(paramLong, paramchg);
  }
  
  public chu(long paramLong, chl paramchl)
  {
    super(paramLong, paramchl);
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
  
  public final void a(chg paramchg)
  {
    super.a(paramchg);
  }
  
  public final void a(chl paramchl)
  {
    paramchl = chk.a(paramchl);
    chl localchl = chk.a(d().a());
    if (paramchl == localchl) {
      return;
    }
    long l = localchl.a(paramchl, a);
    super.a(b.a(paramchl));
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
    return cld.a.b().a(this);
  }
  
  public static final class a
    extends ckb
  {
    public chu a;
    public chi b;
    
    public a(chu paramchu, chi paramchi)
    {
      a = paramchu;
      b = paramchi;
    }
    
    public final chi a()
    {
      return b;
    }
    
    protected final long b()
    {
      return a.a;
    }
    
    protected final chg c()
    {
      return a.b;
    }
  }
}

/* Location:
 * Qualified Name:     chu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */