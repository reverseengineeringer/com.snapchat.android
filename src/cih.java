import java.io.Serializable;

public abstract class cih
  extends cie
  implements chy, Serializable
{
  public volatile long a;
  public volatile chg b;
  
  public cih()
  {
    this(chk.a(), cjd.M());
  }
  
  public cih(long paramLong)
  {
    this(paramLong, cjd.M());
  }
  
  public cih(long paramLong, chg paramchg)
  {
    b = chk.a(paramchg);
    paramchg = b;
    a = paramLong;
  }
  
  public cih(long paramLong, chl paramchl)
  {
    this(paramLong, cjd.b(paramchl));
  }
  
  public cih(chg paramchg)
  {
    b = chk.a(paramchg);
    long l = b.a(1, 1, 1, 0, 0, 0, 0);
    paramchg = b;
    a = l;
  }
  
  public cih(Object paramObject)
  {
    cjm localcjm = aa;
    if (paramObject == null) {}
    for (Object localObject = null;; localObject = paramObject.getClass())
    {
      localObject = (cjp)localcjm.a((Class)localObject);
      if (localObject == null) {
        break;
      }
      b = chk.a(((cjp)localObject).b(paramObject));
      long l = ((cjp)localObject).a(paramObject);
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
    chg localchg = b;
    a = paramLong;
  }
  
  public void a(chg paramchg)
  {
    b = chk.a(paramchg);
  }
  
  public final long c()
  {
    return a;
  }
  
  public final chg d()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     cih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */