import java.io.Serializable;

public abstract class chg
  extends chd
  implements cgx, Serializable
{
  public volatile long a;
  public volatile cgf b;
  
  public chg()
  {
    this(cgj.a(), cic.M());
  }
  
  public chg(long paramLong)
  {
    this(paramLong, cic.M());
  }
  
  public chg(long paramLong, cgf paramcgf)
  {
    b = cgj.a(paramcgf);
    paramcgf = b;
    a = paramLong;
  }
  
  public chg(long paramLong, cgk paramcgk)
  {
    this(paramLong, cic.b(paramcgk));
  }
  
  public chg(cgf paramcgf)
  {
    b = cgj.a(paramcgf);
    long l = b.a(1, 1, 1, 0, 0, 0, 0);
    paramcgf = b;
    a = l;
  }
  
  public chg(Object paramObject)
  {
    cil localcil = aa;
    if (paramObject == null) {}
    for (Object localObject = null;; localObject = paramObject.getClass())
    {
      localObject = (cio)localcil.a((Class)localObject);
      if (localObject == null) {
        break;
      }
      b = cgj.a(((cio)localObject).b(paramObject));
      long l = ((cio)localObject).a(paramObject);
      paramObject = b;
      a = l;
      return;
    }
    localObject = new StringBuilder("No instant converter found for type: ");
    if (paramObject == null) {}
    for (paramObject = "null";; paramObject = paramObject.getClass().getName()) {
      throw new IllegalArgumentException((String)paramObject);
    }
  }
  
  public void a(long paramLong)
  {
    cgf localcgf = b;
    a = paramLong;
  }
  
  public void a(cgf paramcgf)
  {
    b = cgj.a(paramcgf);
  }
  
  public final long c()
  {
    return a;
  }
  
  public final cgf d()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     chg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */