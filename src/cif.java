import java.util.HashMap;
import java.util.Locale;

public final class cif
  extends chj
{
  final cgg E;
  final cgg F;
  private transient cif G;
  
  private cif(cgf paramcgf, cgg paramcgg1, cgg paramcgg2)
  {
    super(paramcgf, null);
    E = paramcgg1;
    F = paramcgg2;
  }
  
  private cgh a(cgh paramcgh, HashMap<Object, Object> paramHashMap)
  {
    if ((paramcgh == null) || (!paramcgh.c())) {
      return paramcgh;
    }
    if (paramHashMap.containsKey(paramcgh)) {
      return (cgh)paramHashMap.get(paramcgh);
    }
    cif.a locala = new cif.a(paramcgh, a(paramcgh.d(), paramHashMap), a(paramcgh.e(), paramHashMap), a(paramcgh.f(), paramHashMap));
    paramHashMap.put(paramcgh, locala);
    return locala;
  }
  
  private cgm a(cgm paramcgm, HashMap<Object, Object> paramHashMap)
  {
    if ((paramcgm == null) || (!paramcgm.b())) {
      return paramcgm;
    }
    if (paramHashMap.containsKey(paramcgm)) {
      return (cgm)paramHashMap.get(paramcgm);
    }
    cif.b localb = new cif.b(paramcgm);
    paramHashMap.put(paramcgm, localb);
    return localb;
  }
  
  public static cif a(cgf paramcgf, cgx paramcgx1, cgx paramcgx2)
  {
    Object localObject = null;
    if (paramcgf == null) {
      throw new IllegalArgumentException("Must supply a chronology");
    }
    if (paramcgx1 == null)
    {
      paramcgx1 = null;
      if (paramcgx2 != null) {
        break label66;
      }
    }
    label66:
    for (paramcgx2 = (cgx)localObject;; paramcgx2 = paramcgx2.a())
    {
      if ((paramcgx1 == null) || (paramcgx2 == null) || (paramcgx1.a(paramcgx2))) {
        break label76;
      }
      throw new IllegalArgumentException("The lower limit must be come before than the upper limit");
      paramcgx1 = paramcgx1.a();
      break;
    }
    label76:
    return new cif(paramcgf, (cgg)paramcgx1, (cgg)paramcgx2);
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    long l = a.a(paramInt1, paramInt2, paramInt3, paramInt4);
    a(l, "resulting");
    return l;
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    long l = a.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
    a(l, "resulting");
    return l;
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
    if ((localcgk == cgk.a) && (G != null)) {
      return G;
    }
    Object localObject = E;
    paramcgk = (cgk)localObject;
    if (localObject != null)
    {
      paramcgk = ((cgg)localObject).e();
      paramcgk.a(localcgk);
      paramcgk = paramcgk.a();
    }
    cgg localcgg = F;
    localObject = localcgg;
    if (localcgg != null)
    {
      localObject = localcgg.e();
      ((cgt)localObject).a(localcgk);
      localObject = ((cgt)localObject).a();
    }
    paramcgk = a(a.a(localcgk), paramcgk, (cgx)localObject);
    if (localcgk == cgk.a) {
      G = paramcgk;
    }
    return paramcgk;
  }
  
  final void a(long paramLong, String paramString)
  {
    cgg localcgg = E;
    if ((localcgg != null) && (paramLong < a)) {
      throw new cif.c(paramString, true);
    }
    localcgg = F;
    if ((localcgg != null) && (paramLong >= a)) {
      throw new cif.c(paramString, false);
    }
  }
  
  protected final void a(chj.a parama)
  {
    HashMap localHashMap = new HashMap();
    l = a(l, localHashMap);
    k = a(k, localHashMap);
    j = a(j, localHashMap);
    i = a(i, localHashMap);
    h = a(h, localHashMap);
    g = a(g, localHashMap);
    f = a(f, localHashMap);
    e = a(e, localHashMap);
    d = a(d, localHashMap);
    c = a(c, localHashMap);
    b = a(b, localHashMap);
    a = a(a, localHashMap);
    E = a(E, localHashMap);
    F = a(F, localHashMap);
    G = a(G, localHashMap);
    H = a(H, localHashMap);
    I = a(I, localHashMap);
    x = a(x, localHashMap);
    y = a(y, localHashMap);
    z = a(z, localHashMap);
    D = a(D, localHashMap);
    A = a(A, localHashMap);
    B = a(B, localHashMap);
    C = a(C, localHashMap);
    m = a(m, localHashMap);
    n = a(n, localHashMap);
    o = a(o, localHashMap);
    p = a(p, localHashMap);
    q = a(q, localHashMap);
    r = a(r, localHashMap);
    s = a(s, localHashMap);
    u = a(u, localHashMap);
    t = a(t, localHashMap);
    v = a(v, localHashMap);
    w = a(w, localHashMap);
  }
  
  public final cgf b()
  {
    return a(cgk.a);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cif)) {
        return false;
      }
      paramObject = (cif)paramObject;
    } while ((a.equals(a)) && (cjh.a(E, E)) && (cjh.a(F, F)));
    return false;
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (E != null) {}
    for (int i = E.hashCode();; i = 0)
    {
      if (F != null) {
        j = F.hashCode();
      }
      return i + 317351877 + j + a.hashCode() * 7;
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("LimitChronology[").append(a.toString()).append(", ");
    if (E == null)
    {
      str = "NoLimit";
      localStringBuilder = localStringBuilder.append(str).append(", ");
      if (F != null) {
        break label86;
      }
    }
    label86:
    for (String str = "NoLimit";; str = F.toString())
    {
      return str + ']';
      str = E.toString();
      break;
    }
  }
  
  final class a
    extends cjd
  {
    private final cgm c;
    private final cgm d;
    private final cgm e;
    
    a(cgh paramcgh, cgm paramcgm1, cgm paramcgm2, cgm paramcgm3)
    {
      super(paramcgh.a());
      c = paramcgm1;
      d = paramcgm2;
      e = paramcgm3;
    }
    
    public final int a(long paramLong)
    {
      a(paramLong, null);
      return b.a(paramLong);
    }
    
    public final int a(Locale paramLocale)
    {
      return b.a(paramLocale);
    }
    
    public final long a(long paramLong, int paramInt)
    {
      a(paramLong, null);
      paramLong = b.a(paramLong, paramInt);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final long a(long paramLong1, long paramLong2)
    {
      a(paramLong1, null);
      paramLong1 = b.a(paramLong1, paramLong2);
      a(paramLong1, "resulting");
      return paramLong1;
    }
    
    public final long a(long paramLong, String paramString, Locale paramLocale)
    {
      a(paramLong, null);
      paramLong = b.a(paramLong, paramString, paramLocale);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final String a(long paramLong, Locale paramLocale)
    {
      a(paramLong, null);
      return b.a(paramLong, paramLocale);
    }
    
    public final int b(long paramLong1, long paramLong2)
    {
      a(paramLong1, "minuend");
      a(paramLong2, "subtrahend");
      return b.b(paramLong1, paramLong2);
    }
    
    public final long b(long paramLong, int paramInt)
    {
      a(paramLong, null);
      paramLong = b.b(paramLong, paramInt);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final String b(long paramLong, Locale paramLocale)
    {
      a(paramLong, null);
      return b.b(paramLong, paramLocale);
    }
    
    public final boolean b(long paramLong)
    {
      a(paramLong, null);
      return b.b(paramLong);
    }
    
    public final int c(long paramLong)
    {
      a(paramLong, null);
      return b.c(paramLong);
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      a(paramLong1, "minuend");
      a(paramLong2, "subtrahend");
      return b.c(paramLong1, paramLong2);
    }
    
    public final long d(long paramLong)
    {
      a(paramLong, null);
      paramLong = b.d(paramLong);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final cgm d()
    {
      return c;
    }
    
    public final long e(long paramLong)
    {
      a(paramLong, null);
      paramLong = b.e(paramLong);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final cgm e()
    {
      return d;
    }
    
    public final long f(long paramLong)
    {
      a(paramLong, null);
      paramLong = b.f(paramLong);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final cgm f()
    {
      return e;
    }
    
    public final long g(long paramLong)
    {
      a(paramLong, null);
      paramLong = b.g(paramLong);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final long h(long paramLong)
    {
      a(paramLong, null);
      paramLong = b.h(paramLong);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final long i(long paramLong)
    {
      a(paramLong, null);
      paramLong = b.i(paramLong);
      a(paramLong, "resulting");
      return paramLong;
    }
  }
  
  final class b
    extends cje
  {
    b(cgm paramcgm)
    {
      super(paramcgm.a());
    }
    
    public final long a(long paramLong, int paramInt)
    {
      a(paramLong, null);
      paramLong = b.a(paramLong, paramInt);
      a(paramLong, "resulting");
      return paramLong;
    }
    
    public final long a(long paramLong1, long paramLong2)
    {
      a(paramLong1, null);
      paramLong1 = b.a(paramLong1, paramLong2);
      a(paramLong1, "resulting");
      return paramLong1;
    }
    
    public final int b(long paramLong1, long paramLong2)
    {
      a(paramLong1, "minuend");
      a(paramLong2, "subtrahend");
      return b.b(paramLong1, paramLong2);
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      a(paramLong1, "minuend");
      a(paramLong2, "subtrahend");
      return b.c(paramLong1, paramLong2);
    }
  }
  
  final class c
    extends IllegalArgumentException
  {
    private final boolean b;
    
    c(String paramString, boolean paramBoolean)
    {
      super();
      b = paramBoolean;
    }
    
    public final String getMessage()
    {
      StringBuffer localStringBuffer = new StringBuffer(85);
      localStringBuffer.append("The");
      Object localObject = super.getMessage();
      if (localObject != null)
      {
        localStringBuffer.append(' ');
        localStringBuffer.append((String)localObject);
      }
      localStringBuffer.append(" instant is ");
      localObject = ckc.a.b().a(a);
      if (b)
      {
        localStringBuffer.append("below the supported minimum of ");
        ((cjw)localObject).a(localStringBuffer, E.a, null);
      }
      for (;;)
      {
        localStringBuffer.append(" (");
        localStringBuffer.append(a);
        localStringBuffer.append(')');
        return localStringBuffer.toString();
        localStringBuffer.append("above the supported maximum of ");
        ((cjw)localObject).a(localStringBuffer, F.a, null);
      }
    }
    
    public final String toString()
    {
      return "IllegalArgumentException: " + getMessage();
    }
  }
}

/* Location:
 * Qualified Name:     cif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */