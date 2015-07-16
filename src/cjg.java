import java.util.HashMap;
import java.util.Locale;

public final class cjg
  extends cik
{
  final chh E;
  final chh F;
  private transient cjg G;
  
  private cjg(chg paramchg, chh paramchh1, chh paramchh2)
  {
    super(paramchg, null);
    E = paramchh1;
    F = paramchh2;
  }
  
  private chi a(chi paramchi, HashMap<Object, Object> paramHashMap)
  {
    if ((paramchi == null) || (!paramchi.c())) {
      return paramchi;
    }
    if (paramHashMap.containsKey(paramchi)) {
      return (chi)paramHashMap.get(paramchi);
    }
    cjg.a locala = new cjg.a(paramchi, a(paramchi.d(), paramHashMap), a(paramchi.e(), paramHashMap), a(paramchi.f(), paramHashMap));
    paramHashMap.put(paramchi, locala);
    return locala;
  }
  
  private chn a(chn paramchn, HashMap<Object, Object> paramHashMap)
  {
    if ((paramchn == null) || (!paramchn.b())) {
      return paramchn;
    }
    if (paramHashMap.containsKey(paramchn)) {
      return (chn)paramHashMap.get(paramchn);
    }
    cjg.b localb = new cjg.b(paramchn);
    paramHashMap.put(paramchn, localb);
    return localb;
  }
  
  public static cjg a(chg paramchg, chy paramchy1, chy paramchy2)
  {
    Object localObject = null;
    if (paramchg == null) {
      throw new IllegalArgumentException("Must supply a chronology");
    }
    if (paramchy1 == null)
    {
      paramchy1 = null;
      if (paramchy2 != null) {
        break label66;
      }
    }
    label66:
    for (paramchy2 = (chy)localObject;; paramchy2 = paramchy2.a())
    {
      if ((paramchy1 == null) || (paramchy2 == null) || (paramchy1.a(paramchy2))) {
        break label76;
      }
      throw new IllegalArgumentException("The lower limit must be come before than the upper limit");
      paramchy1 = paramchy1.a();
      break;
    }
    label76:
    return new cjg(paramchg, (chh)paramchy1, (chh)paramchy2);
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
  
  public final chg a(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    if (localchl == a()) {
      return this;
    }
    if ((localchl == chl.a) && (G != null)) {
      return G;
    }
    Object localObject = E;
    paramchl = (chl)localObject;
    if (localObject != null)
    {
      paramchl = ((chh)localObject).e();
      paramchl.a(localchl);
      paramchl = paramchl.a();
    }
    chh localchh = F;
    localObject = localchh;
    if (localchh != null)
    {
      localObject = localchh.e();
      ((chu)localObject).a(localchl);
      localObject = ((chu)localObject).a();
    }
    paramchl = a(a.a(localchl), paramchl, (chy)localObject);
    if (localchl == chl.a) {
      G = paramchl;
    }
    return paramchl;
  }
  
  final void a(long paramLong, String paramString)
  {
    chh localchh = E;
    if ((localchh != null) && (paramLong < a)) {
      throw new cjg.c(paramString, true);
    }
    localchh = F;
    if ((localchh != null) && (paramLong >= a)) {
      throw new cjg.c(paramString, false);
    }
  }
  
  protected final void a(cik.a parama)
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
  
  public final chg b()
  {
    return a(chl.a);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cjg)) {
        return false;
      }
      paramObject = (cjg)paramObject;
    } while ((a.equals(a)) && (cki.a(E, E)) && (cki.a(F, F)));
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
    extends cke
  {
    private final chn c;
    private final chn d;
    private final chn e;
    
    a(chi paramchi, chn paramchn1, chn paramchn2, chn paramchn3)
    {
      super(paramchi.a());
      c = paramchn1;
      d = paramchn2;
      e = paramchn3;
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
    
    public final chn d()
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
    
    public final chn e()
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
    
    public final chn f()
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
    extends ckf
  {
    b(chn paramchn)
    {
      super(paramchn.a());
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
      localObject = cld.a.b().a(a);
      if (b)
      {
        localStringBuffer.append("below the supported minimum of ");
        ((ckx)localObject).a(localStringBuffer, E.a, null);
      }
      for (;;)
      {
        localStringBuffer.append(" (");
        localStringBuffer.append(a);
        localStringBuffer.append(')');
        return localStringBuffer.toString();
        localStringBuffer.append("above the supported maximum of ");
        ((ckx)localObject).a(localStringBuffer, F.a, null);
      }
    }
    
    public final String toString()
    {
      return "IllegalArgumentException: " + getMessage();
    }
  }
}

/* Location:
 * Qualified Name:     cjg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */