import java.util.Locale;

abstract class cim
  extends cik
{
  private static final chn F = ckk.a;
  private static final chn G = new cko(cho.b(), 1000L);
  private static final chn H = new cko(cho.c(), 60000L);
  private static final chn I = new cko(cho.d(), 3600000L);
  private static final chn J = new cko(cho.e(), 43200000L);
  private static final chn K = new cko(cho.f(), 86400000L);
  private static final chn L = new cko(cho.g(), 604800000L);
  private static final chi M = new ckm(chj.a(), F, G);
  private static final chi N = new ckm(chj.b(), F, K);
  private static final chi O = new ckm(chj.c(), G, H);
  private static final chi P = new ckm(chj.d(), G, K);
  private static final chi Q = new ckm(chj.e(), H, I);
  private static final chi R = new ckm(chj.f(), H, K);
  private static final chi S = new ckm(chj.g(), I, K);
  private static final chi T = new ckm(chj.i(), I, J);
  private static final chi U = new ckv(S, chj.h());
  private static final chi V = new ckv(T, chj.j());
  private static final chi W = new cim.a();
  final int E;
  private final transient cim.b[] X = new cim.b['Ѐ'];
  
  cim(chg paramchg, int paramInt)
  {
    super(paramchg, null);
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
    chg localchg = a;
    if (localchg != null) {
      return localchg.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    cki.a(chj.b(), paramInt4, 0, 86399999);
    return b(paramInt1, paramInt2, paramInt3) + paramInt4;
  }
  
  public final long a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    chg localchg = a;
    if (localchg != null) {
      return localchg.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
    }
    cki.a(chj.g(), paramInt4, 0, 23);
    cki.a(chj.e(), paramInt5, 0, 59);
    cki.a(chj.c(), paramInt6, 0, 59);
    cki.a(chj.a(), paramInt7, 0, 999);
    return b(paramInt1, paramInt2, paramInt3) + 3600000 * paramInt4 + 60000 * paramInt5 + paramInt6 * 1000 + paramInt7;
  }
  
  abstract long a(long paramLong1, long paramLong2);
  
  public final chl a()
  {
    chg localchg = a;
    if (localchg != null) {
      return localchg.a();
    }
    return chl.a;
  }
  
  protected void a(cik.a parama)
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
    E = new ciu(this);
    F = new cjb(E, this);
    H = new ckh(new ckl(F, 99), chj.v());
    G = new ckl(new ckp((ckh)H), chj.u());
    I = new ciy(this);
    x = new cix(this, f);
    y = new cin(this, f);
    z = new cio(this, f);
    D = new cja(this);
    B = new cit(this);
    A = new cis(this, g);
    C = new ckl(new ckp(B, chj.q()), chj.q());
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
    cim.b localb2 = X[(paramInt & 0x3FF)];
    cim.b localb1;
    if (localb2 != null)
    {
      localb1 = localb2;
      if (a == paramInt) {}
    }
    else
    {
      localb1 = new cim.b(paramInt, d(paramInt));
      X[(paramInt & 0x3FF)] = localb1;
    }
    return b;
  }
  
  long b(int paramInt1, int paramInt2, int paramInt3)
  {
    cki.a(chj.s(), paramInt1, N(), O());
    cki.a(chj.r(), paramInt2, 1, 12);
    cki.a(chj.m(), paramInt3, 1, b(paramInt1, paramInt2));
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
      paramObject = (cim)paramObject;
    } while ((E == E) && (a().equals(((cim)paramObject).a())));
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
    extends ckm
  {
    a()
    {
      super(cim.U(), cim.V());
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
      throw new chp(chj.k(), paramString);
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
 * Qualified Name:     cim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */