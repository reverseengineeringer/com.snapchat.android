import java.util.HashMap;
import java.util.Locale;

public final class cjh
  extends cik
{
  private cjh(chg paramchg, chl paramchl)
  {
    super(paramchg, paramchl);
  }
  
  private long a(long paramLong)
  {
    chl localchl = (chl)b;
    int i = localchl.c(paramLong);
    paramLong -= i;
    if (i != localchl.b(paramLong)) {
      throw new chq(paramLong, c);
    }
    return paramLong;
  }
  
  private chi a(chi paramchi, HashMap<Object, Object> paramHashMap)
  {
    if ((paramchi == null) || (!paramchi.c())) {
      return paramchi;
    }
    if (paramHashMap.containsKey(paramchi)) {
      return (chi)paramHashMap.get(paramchi);
    }
    cjh.a locala = new cjh.a(paramchi, (chl)b, a(paramchi.d(), paramHashMap), a(paramchi.e(), paramHashMap), a(paramchi.f(), paramHashMap));
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
    cjh.b localb = new cjh.b(paramchn, (chl)b);
    paramHashMap.put(paramchn, localb);
    return localb;
  }
  
  public static cjh a(chg paramchg, chl paramchl)
  {
    if (paramchg == null) {
      throw new IllegalArgumentException("Must supply a chronology");
    }
    paramchg = paramchg.b();
    if (paramchg == null) {
      throw new IllegalArgumentException("UTC chronology must not be null");
    }
    if (paramchl == null) {
      throw new IllegalArgumentException("DateTimeZone must not be null");
    }
    return new cjh(paramchg, paramchl);
  }
  
  static boolean a(chn paramchn)
  {
    return (paramchn != null) && (paramchn.d() < 43200000L);
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(a.a(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    return a(a.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7));
  }
  
  public final chg a(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    if (localchl == b) {
      return this;
    }
    if (localchl == chl.a) {
      return a;
    }
    return new cjh(a, localchl);
  }
  
  public final chl a()
  {
    return (chl)b;
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
    return a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof cjh)) {
      return false;
    }
    paramObject = (cjh)paramObject;
    return (a.equals(a)) && (((chl)b).equals((chl)b));
  }
  
  public final int hashCode()
  {
    return ((chl)b).hashCode() * 11 + 326565 + a.hashCode() * 7;
  }
  
  public final String toString()
  {
    return "ZonedChronology[" + a + ", " + b).c + ']';
  }
  
  static final class a
    extends ckc
  {
    final chi a;
    final chl b;
    final chn c;
    final boolean d;
    final chn e;
    final chn f;
    
    a(chi paramchi, chl paramchl, chn paramchn1, chn paramchn2, chn paramchn3)
    {
      super();
      if (!paramchi.c()) {
        throw new IllegalArgumentException();
      }
      a = paramchi;
      b = paramchl;
      c = paramchn1;
      d = cjh.a(paramchn1);
      e = paramchn2;
      f = paramchn3;
    }
    
    private int j(long paramLong)
    {
      int i = b.b(paramLong);
      if (((i + paramLong ^ paramLong) < 0L) && ((i ^ paramLong) >= 0L)) {
        throw new ArithmeticException("Adding time zone offset caused overflow");
      }
      return i;
    }
    
    public final int a(long paramLong)
    {
      paramLong = b.d(paramLong);
      return a.a(paramLong);
    }
    
    public final int a(Locale paramLocale)
    {
      return a.a(paramLocale);
    }
    
    public final long a(long paramLong, int paramInt)
    {
      if (d)
      {
        int i = j(paramLong);
        return a.a(i + paramLong, paramInt) - i;
      }
      long l = b.d(paramLong);
      l = a.a(l, paramInt);
      return b.a(l, paramLong);
    }
    
    public final long a(long paramLong1, long paramLong2)
    {
      if (d)
      {
        int i = j(paramLong1);
        return a.a(i + paramLong1, paramLong2) - i;
      }
      long l = b.d(paramLong1);
      paramLong2 = a.a(l, paramLong2);
      return b.a(paramLong2, paramLong1);
    }
    
    public final long a(long paramLong, String paramString, Locale paramLocale)
    {
      long l = b.d(paramLong);
      l = a.a(l, paramString, paramLocale);
      return b.a(l, paramLong);
    }
    
    public final String a(int paramInt, Locale paramLocale)
    {
      return a.a(paramInt, paramLocale);
    }
    
    public final String a(long paramLong, Locale paramLocale)
    {
      paramLong = b.d(paramLong);
      return a.a(paramLong, paramLocale);
    }
    
    public final int b(long paramLong1, long paramLong2)
    {
      int j = j(paramLong2);
      chi localchi = a;
      if (d) {}
      for (int i = j;; i = j(paramLong1)) {
        return localchi.b(i + paramLong1, j + paramLong2);
      }
    }
    
    public final long b(long paramLong, int paramInt)
    {
      long l = b.d(paramLong);
      l = a.b(l, paramInt);
      paramLong = b.a(l, paramLong);
      if (a(paramLong) != paramInt)
      {
        chq localchq = new chq(l, b.c);
        chp localchp = new chp(a.a(), Integer.valueOf(paramInt), localchq.getMessage());
        localchp.initCause(localchq);
        throw localchp;
      }
      return paramLong;
    }
    
    public final String b(int paramInt, Locale paramLocale)
    {
      return a.b(paramInt, paramLocale);
    }
    
    public final String b(long paramLong, Locale paramLocale)
    {
      paramLong = b.d(paramLong);
      return a.b(paramLong, paramLocale);
    }
    
    public final boolean b(long paramLong)
    {
      paramLong = b.d(paramLong);
      return a.b(paramLong);
    }
    
    public final int c(long paramLong)
    {
      paramLong = b.d(paramLong);
      return a.c(paramLong);
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      int j = j(paramLong2);
      chi localchi = a;
      if (d) {}
      for (int i = j;; i = j(paramLong1)) {
        return localchi.c(i + paramLong1, j + paramLong2);
      }
    }
    
    public final long d(long paramLong)
    {
      if (d)
      {
        int i = j(paramLong);
        return a.d(i + paramLong) - i;
      }
      long l = b.d(paramLong);
      l = a.d(l);
      return b.a(l, paramLong);
    }
    
    public final chn d()
    {
      return c;
    }
    
    public final long e(long paramLong)
    {
      if (d)
      {
        int i = j(paramLong);
        return a.e(i + paramLong) - i;
      }
      long l = b.d(paramLong);
      l = a.e(l);
      return b.a(l, paramLong);
    }
    
    public final chn e()
    {
      return e;
    }
    
    public final chn f()
    {
      return f;
    }
    
    public final int g()
    {
      return a.g();
    }
    
    public final int h()
    {
      return a.h();
    }
    
    public final long i(long paramLong)
    {
      paramLong = b.d(paramLong);
      return a.i(paramLong);
    }
  }
  
  static final class b
    extends ckd
  {
    final chn a;
    final boolean b;
    final chl c;
    
    b(chn paramchn, chl paramchl)
    {
      super();
      if (!paramchn.b()) {
        throw new IllegalArgumentException();
      }
      a = paramchn;
      b = cjh.a(paramchn);
      c = paramchl;
    }
    
    private int a(long paramLong)
    {
      int i = c.b(paramLong);
      if (((i + paramLong ^ paramLong) < 0L) && ((i ^ paramLong) >= 0L)) {
        throw new ArithmeticException("Adding time zone offset caused overflow");
      }
      return i;
    }
    
    private int b(long paramLong)
    {
      int i = c.c(paramLong);
      if (((paramLong - i ^ paramLong) < 0L) && ((i ^ paramLong) < 0L)) {
        throw new ArithmeticException("Subtracting time zone offset caused overflow");
      }
      return i;
    }
    
    public final long a(long paramLong, int paramInt)
    {
      int i = a(paramLong);
      paramLong = a.a(i + paramLong, paramInt);
      if (b) {}
      for (paramInt = i;; paramInt = b(paramLong)) {
        return paramLong - paramInt;
      }
    }
    
    public final long a(long paramLong1, long paramLong2)
    {
      int i = a(paramLong1);
      paramLong1 = a.a(i + paramLong1, paramLong2);
      if (b) {}
      for (;;)
      {
        return paramLong1 - i;
        i = b(paramLong1);
      }
    }
    
    public final int b(long paramLong1, long paramLong2)
    {
      int j = a(paramLong2);
      chn localchn = a;
      if (b) {}
      for (int i = j;; i = a(paramLong1)) {
        return localchn.b(i + paramLong1, j + paramLong2);
      }
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      int j = a(paramLong2);
      chn localchn = a;
      if (b) {}
      for (int i = j;; i = a(paramLong1)) {
        return localchn.c(i + paramLong1, j + paramLong2);
      }
    }
    
    public final boolean c()
    {
      if (b) {
        return a.c();
      }
      return (a.c()) && (c.c());
    }
    
    public final long d()
    {
      return a.d();
    }
  }
}

/* Location:
 * Qualified Name:     cjh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */