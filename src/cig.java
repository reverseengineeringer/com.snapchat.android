import java.util.HashMap;
import java.util.Locale;

public final class cig
  extends chj
{
  private cig(cgf paramcgf, cgk paramcgk)
  {
    super(paramcgf, paramcgk);
  }
  
  private long a(long paramLong)
  {
    cgk localcgk = (cgk)b;
    int i = localcgk.c(paramLong);
    paramLong -= i;
    if (i != localcgk.b(paramLong)) {
      throw new cgp(paramLong, c);
    }
    return paramLong;
  }
  
  private cgh a(cgh paramcgh, HashMap<Object, Object> paramHashMap)
  {
    if ((paramcgh == null) || (!paramcgh.c())) {
      return paramcgh;
    }
    if (paramHashMap.containsKey(paramcgh)) {
      return (cgh)paramHashMap.get(paramcgh);
    }
    cig.a locala = new cig.a(paramcgh, (cgk)b, a(paramcgh.d(), paramHashMap), a(paramcgh.e(), paramHashMap), a(paramcgh.f(), paramHashMap));
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
    cig.b localb = new cig.b(paramcgm, (cgk)b);
    paramHashMap.put(paramcgm, localb);
    return localb;
  }
  
  public static cig a(cgf paramcgf, cgk paramcgk)
  {
    if (paramcgf == null) {
      throw new IllegalArgumentException("Must supply a chronology");
    }
    paramcgf = paramcgf.b();
    if (paramcgf == null) {
      throw new IllegalArgumentException("UTC chronology must not be null");
    }
    if (paramcgk == null) {
      throw new IllegalArgumentException("DateTimeZone must not be null");
    }
    return new cig(paramcgf, paramcgk);
  }
  
  static boolean a(cgm paramcgm)
  {
    return (paramcgm != null) && (paramcgm.d() < 43200000L);
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(a.a(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    return a(a.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7));
  }
  
  public final cgf a(cgk paramcgk)
  {
    cgk localcgk = paramcgk;
    if (paramcgk == null) {
      localcgk = cgk.a();
    }
    if (localcgk == b) {
      return this;
    }
    if (localcgk == cgk.a) {
      return a;
    }
    return new cig(a, localcgk);
  }
  
  public final cgk a()
  {
    return (cgk)b;
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
    return a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof cig)) {
      return false;
    }
    paramObject = (cig)paramObject;
    return (a.equals(a)) && (((cgk)b).equals((cgk)b));
  }
  
  public final int hashCode()
  {
    return ((cgk)b).hashCode() * 11 + 326565 + a.hashCode() * 7;
  }
  
  public final String toString()
  {
    return "ZonedChronology[" + a + ", " + b).c + ']';
  }
  
  static final class a
    extends cjb
  {
    final cgh a;
    final cgk b;
    final cgm c;
    final boolean d;
    final cgm e;
    final cgm f;
    
    a(cgh paramcgh, cgk paramcgk, cgm paramcgm1, cgm paramcgm2, cgm paramcgm3)
    {
      super();
      if (!paramcgh.c()) {
        throw new IllegalArgumentException();
      }
      a = paramcgh;
      b = paramcgk;
      c = paramcgm1;
      d = cig.a(paramcgm1);
      e = paramcgm2;
      f = paramcgm3;
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
      cgh localcgh = a;
      if (d) {}
      for (int i = j;; i = j(paramLong1)) {
        return localcgh.b(i + paramLong1, j + paramLong2);
      }
    }
    
    public final long b(long paramLong, int paramInt)
    {
      long l = b.d(paramLong);
      l = a.b(l, paramInt);
      paramLong = b.a(l, paramLong);
      if (a(paramLong) != paramInt)
      {
        cgp localcgp = new cgp(l, b.c);
        cgo localcgo = new cgo(a.a(), Integer.valueOf(paramInt), localcgp.getMessage());
        localcgo.initCause(localcgp);
        throw localcgo;
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
      cgh localcgh = a;
      if (d) {}
      for (int i = j;; i = j(paramLong1)) {
        return localcgh.c(i + paramLong1, j + paramLong2);
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
    
    public final cgm d()
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
    
    public final cgm e()
    {
      return e;
    }
    
    public final cgm f()
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
    extends cjc
  {
    final cgm a;
    final boolean b;
    final cgk c;
    
    b(cgm paramcgm, cgk paramcgk)
    {
      super();
      if (!paramcgm.b()) {
        throw new IllegalArgumentException();
      }
      a = paramcgm;
      b = cig.a(paramcgm);
      c = paramcgk;
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
      cgm localcgm = a;
      if (b) {}
      for (int i = j;; i = a(paramLong1)) {
        return localcgm.b(i + paramLong1, j + paramLong2);
      }
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      int j = a(paramLong2);
      cgm localcgm = a;
      if (b) {}
      for (int i = j;; i = a(paramLong1)) {
        return localcgm.c(i + paramLong1, j + paramLong2);
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
 * Qualified Name:     cig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */