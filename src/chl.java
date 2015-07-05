import java.util.Locale;

abstract class chl
  extends chj
{
  private static final cgm F = cjj.a;
  private static final cgm G = new cjn(cgn.b(), 1000L);
  private static final cgm H = new cjn(cgn.c(), 60000L);
  private static final cgm I = new cjn(cgn.d(), 3600000L);
  private static final cgm J = new cjn(cgn.e(), 43200000L);
  private static final cgm K = new cjn(cgn.f(), 86400000L);
  private static final cgm L = new cjn(cgn.g(), 604800000L);
  private static final cgh M = new cjl(cgi.a(), F, G);
  private static final cgh N = new cjl(cgi.b(), F, K);
  private static final cgh O = new cjl(cgi.c(), G, H);
  private static final cgh P = new cjl(cgi.d(), G, K);
  private static final cgh Q = new cjl(cgi.e(), H, I);
  private static final cgh R = new cjl(cgi.f(), H, K);
  private static final cgh S = new cjl(cgi.g(), I, K);
  private static final cgh T = new cjl(cgi.i(), I, J);
  private static final cgh U = new cju(S, cgi.h());
  private static final cgh V = new cju(T, cgi.j());
  private static final cgh W = new chl.a();
  final int E;
  private final transient chl.b[] X = new chl.b['Ѐ'];
  
  chl(cgf paramcgf, int paramInt)
  {
    super(paramcgf, null);
    if ((paramInt <= 0) || (paramInt > 7)) {
      throw new IllegalArgumentException("Invalid min days in first week: " + paramInt);
    }
    E = paramInt;
  }
  
  static int L()
  {
    return 366;
  }
  
  static int M()
  {
    return 31;
  }
  
  static int P()
  {
    return 12;
  }
  
  static int d(long paramLong)
  {
    if (paramLong >= 0L) {
      paramLong /= 86400000L;
    }
    long l;
    do
    {
      return (int)((paramLong + 3L) % 7L) + 1;
      l = (paramLong - 86399999L) / 86400000L;
      paramLong = l;
    } while (l >= -3L);
    return (int)((l + 4L) % 7L) + 7;
  }
  
  static int e(long paramLong)
  {
    if (paramLong >= 0L) {
      return (int)(paramLong % 86400000L);
    }
    return 86399999 + (int)((1L + paramLong) % 86400000L);
  }
  
  private int e(long paramLong, int paramInt)
  {
    long l = e(paramInt);
    if (paramLong < l) {
      return a(paramInt - 1);
    }
    if (paramLong >= e(paramInt + 1)) {
      return 1;
    }
    return (int)((paramLong - l) / 604800000L) + 1;
  }
  
  private long e(int paramInt)
  {
    long l = b(paramInt);
    paramInt = d(l);
    if (paramInt > 8 - E) {
      return l + (8 - paramInt) * 86400000L;
    }
    return l - (paramInt - 1) * 86400000L;
  }
  
  abstract int N();
  
  abstract int O();
  
  abstract long Q();
  
  abstract long R();
  
  abstract long S();
  
  abstract long T();
  
  final int a(int paramInt)
  {
    long l = e(paramInt);
    return (int)((e(paramInt + 1) - l) / 604800000L);
  }
  
  final int a(long paramLong)
  {
    long l2 = 31536000000L;
    long l4 = R();
    long l3 = (paramLong >> 1) + T();
    long l1 = l3;
    if (l3 < 0L) {
      l1 = l3 - l4 + 1L;
    }
    int j = (int)(l1 / l4);
    l3 = b(j);
    l1 = paramLong - l3;
    int i;
    if (l1 < 0L) {
      i = j - 1;
    }
    do
    {
      do
      {
        return i;
        i = j;
      } while (l1 < 31536000000L);
      l1 = l2;
      if (c(j)) {
        l1 = 31622400000L;
      }
      i = j;
    } while (l1 + l3 > paramLong);
    return j + 1;
  }
  
  abstract int a(long paramLong, int paramInt);
  
  final int a(long paramLong, int paramInt1, int paramInt2)
  {
    return (int)((paramLong - (b(paramInt1) + c(paramInt1, paramInt2))) / 86400000L) + 1;
  }
  
  final long a(int paramInt1, int paramInt2)
  {
    return b(paramInt1) + c(paramInt1, paramInt2);
  }
  
  final long a(int paramInt1, int paramInt2, int paramInt3)
  {
    return b(paramInt1) + c(paramInt1, paramInt2) + (paramInt3 - 1) * 86400000L;
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    cgf localcgf = a;
    if (localcgf != null) {
      return localcgf.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    cjh.a(cgi.b(), paramInt4, 0, 86399999);
    return b(paramInt1, paramInt2, paramInt3) + paramInt4;
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    cgf localcgf = a;
    if (localcgf != null) {
      return localcgf.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
    }
    cjh.a(cgi.g(), paramInt4, 0, 23);
    cjh.a(cgi.e(), paramInt5, 0, 59);
    cjh.a(cgi.c(), paramInt6, 0, 59);
    cjh.a(cgi.a(), paramInt7, 0, 999);
    return b(paramInt1, paramInt2, paramInt3) + 3600000 * paramInt4 + 60000 * paramInt5 + paramInt6 * 1000 + paramInt7;
  }
  
  abstract long a(long paramLong1, long paramLong2);
  
  public final cgk a()
  {
    cgf localcgf = a;
    if (localcgf != null) {
      return localcgf.a();
    }
    return cgk.a;
  }
  
  protected void a(chj.a parama)
  {
    a = F;
    b = G;
    c = H;
    d = I;
    e = J;
    f = K;
    g = L;
    m = M;
    n = N;
    o = O;
    p = P;
    q = Q;
    r = R;
    s = S;
    u = T;
    t = U;
    v = V;
    w = W;
    E = new cht(this);
    F = new cia(E, this);
    H = new cjg(new cjk(F, 99), cgi.v());
    G = new cjk(new cjo((cjg)H), cgi.u());
    I = new chx(this);
    x = new chw(this, f);
    y = new chm(this, f);
    z = new chn(this, f);
    D = new chz(this);
    B = new chs(this);
    A = new chr(this, g);
    C = new cjk(new cjo(B, cgi.q()), cgi.q());
    j = E.d();
    k = H.d();
    i = D.d();
    h = B.d();
  }
  
  abstract int b(int paramInt1, int paramInt2);
  
  final int b(long paramLong)
  {
    int i = a(paramLong);
    int j = e(paramLong, i);
    if (j == 1) {
      i = a(604800000L + paramLong);
    }
    while (j <= 51) {
      return i;
    }
    return a(paramLong - 1209600000L);
  }
  
  final int b(long paramLong, int paramInt)
  {
    return (int)((paramLong - b(paramInt)) / 86400000L) + 1;
  }
  
  final long b(int paramInt)
  {
    chl.b localb2 = X[(paramInt & 0x3FF)];
    chl.b localb1;
    if (localb2 != null)
    {
      localb1 = localb2;
      if (a == paramInt) {}
    }
    else
    {
      localb1 = new chl.b(paramInt, d(paramInt));
      X[(paramInt & 0x3FF)] = localb1;
    }
    return b;
  }
  
  long b(int paramInt1, int paramInt2, int paramInt3)
  {
    cjh.a(cgi.s(), paramInt1, N(), O());
    cjh.a(cgi.r(), paramInt2, 1, 12);
    cjh.a(cgi.m(), paramInt3, 1, b(paramInt1, paramInt2));
    return a(paramInt1, paramInt2, paramInt3);
  }
  
  final int c(long paramLong)
  {
    return e(paramLong, a(paramLong));
  }
  
  int c(long paramLong, int paramInt)
  {
    return f(paramLong);
  }
  
  abstract long c(int paramInt1, int paramInt2);
  
  abstract boolean c(int paramInt);
  
  abstract long d(int paramInt);
  
  abstract long d(long paramLong, int paramInt);
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        break;
      }
      paramObject = (chl)paramObject;
    } while ((E == E) && (a().equals(((chl)paramObject).a())));
    return false;
    return false;
  }
  
  final int f(long paramLong)
  {
    int i = a(paramLong);
    return b(i, a(paramLong, i));
  }
  
  public int hashCode()
  {
    return getClass().getName().hashCode() * 11 + a().hashCode() + E;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(60);
    String str = getClass().getName();
    int i = str.lastIndexOf('.');
    Object localObject = str;
    if (i >= 0) {
      localObject = str.substring(i + 1);
    }
    localStringBuilder.append((String)localObject);
    localStringBuilder.append('[');
    localObject = a();
    if (localObject != null) {
      localStringBuilder.append(c);
    }
    if (E != 4)
    {
      localStringBuilder.append(",mdfw=");
      localStringBuilder.append(E);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  static final class a
    extends cjl
  {
    a()
    {
      super(chl.U(), chl.V());
    }
    
    public final int a(Locale paramLocale)
    {
      return am;
    }
    
    public final long a(long paramLong, String paramString, Locale paramLocale)
    {
      paramLocale = af;
      int i = paramLocale.length;
      int j;
      do
      {
        j = i - 1;
        if (j < 0) {
          break;
        }
        i = j;
      } while (!paramLocale[j].equalsIgnoreCase(paramString));
      return b(paramLong, j);
      throw new cgo(cgi.k(), paramString);
    }
    
    public final String a(int paramInt, Locale paramLocale)
    {
      return af[paramInt];
    }
  }
  
  static final class b
  {
    public final int a;
    public final long b;
    
    b(int paramInt, long paramLong)
    {
      a = paramInt;
      b = paramLong;
    }
  }
}

/* Location:
 * Qualified Name:     chl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */