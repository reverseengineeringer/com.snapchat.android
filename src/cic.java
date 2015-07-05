import java.util.HashMap;
import java.util.Map;

public final class cic
  extends chj
{
  private static final cic E;
  private static final cic[] F;
  private static final Map<cgk, cic> G = new HashMap();
  
  static
  {
    F = new cic[64];
    E = new cic(cib.W());
    G.put(cgk.a, E);
  }
  
  private cic(cgf paramcgf)
  {
    super(paramcgf, null);
  }
  
  public static cic L()
  {
    return E;
  }
  
  public static cic M()
  {
    return b(cgk.a());
  }
  
  public static cic b(cgk paramcgk)
  {
    cgk localcgk = paramcgk;
    if (paramcgk == null) {
      localcgk = cgk.a();
    }
    int i = System.identityHashCode(localcgk) & 0x3F;
    paramcgk = F[i];
    if ((paramcgk != null) && (paramcgk.a() == localcgk)) {
      return paramcgk;
    }
    synchronized (G)
    {
      cic localcic = (cic)G.get(localcgk);
      paramcgk = localcic;
      if (localcic == null)
      {
        paramcgk = new cic(cig.a(E, localcgk));
        G.put(localcgk, paramcgk);
      }
      F[i] = paramcgk;
      return paramcgk;
    }
  }
  
  public final cgf a(cgk paramcgk)
  {
    cgk localcgk = paramcgk;
    if (paramcgk == null) {
      localcgk = cgk.a();
    }
    if (localcgk == a()) {
      return this;
    }
    return b(localcgk);
  }
  
  protected final void a(chj.a parama)
  {
    if (a.a() == cgk.a)
    {
      H = new cjg(cid.a, cgi.v());
      G = new cjo((cjg)H, cgi.u());
      C = new cjo((cjg)H, cgi.q());
      k = H.d();
    }
  }
  
  public final cgf b()
  {
    return E;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof cic))
    {
      paramObject = (cic)paramObject;
      return a().equals(((cic)paramObject).a());
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
    cgk localcgk = a();
    if (localcgk != null) {
      str = "ISOChronology" + '[' + c + ']';
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     cic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */