import java.util.HashMap;
import java.util.Map;

public final class cjd
  extends cik
{
  private static final cjd E;
  private static final cjd[] F;
  private static final Map<chl, cjd> G = new HashMap();
  
  static
  {
    F = new cjd[64];
    E = new cjd(cjc.W());
    G.put(chl.a, E);
  }
  
  private cjd(chg paramchg)
  {
    super(paramchg, null);
  }
  
  public static cjd L()
  {
    return E;
  }
  
  public static cjd M()
  {
    return b(chl.a());
  }
  
  public static cjd b(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    int i = System.identityHashCode(localchl) & 0x3F;
    paramchl = F[i];
    if ((paramchl != null) && (paramchl.a() == localchl)) {
      return paramchl;
    }
    synchronized (G)
    {
      cjd localcjd = (cjd)G.get(localchl);
      paramchl = localcjd;
      if (localcjd == null)
      {
        paramchl = new cjd(cjh.a(E, localchl));
        G.put(localchl, paramchl);
      }
      F[i] = paramchl;
      return paramchl;
    }
  }
  
  public final chg a(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    if (localchl == a()) {
      return this;
    }
    return b(localchl);
  }
  
  protected final void a(cik.a parama)
  {
    if (a.a() == chl.a)
    {
      H = new ckh(cje.a, chj.v());
      G = new ckp((ckh)H, chj.u());
      C = new ckp((ckh)H, chj.q());
      k = H.d();
    }
  }
  
  public final chg b()
  {
    return E;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof cjd))
    {
      paramObject = (cjd)paramObject;
      return a().equals(((cjd)paramObject).a());
    }
    return false;
  }
  
  public final int hashCode()
  {
    return "ISO".hashCode() * 11 + a().hashCode();
  }
  
  public final String toString()
  {
    String str = "ISOChronology";
    chl localchl = a();
    if (localchl != null) {
      str = "ISOChronology" + '[' + c + ']';
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     cjd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */