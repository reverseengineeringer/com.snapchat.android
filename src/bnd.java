import java.util.Collections;
import java.util.List;

public final class bnd
{
  public final bnb a;
  public final bna b;
  public final int c;
  public final String d;
  public final bmu e;
  public final bmv f;
  public final bne g;
  public bnd h;
  bnd i;
  final bnd j;
  private volatile bmk k;
  
  private bnd(bnd.a parama)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f.a();
    g = g;
    h = h;
    i = i;
    j = j;
  }
  
  public final int a()
  {
    return c;
  }
  
  public final String a(String paramString)
  {
    paramString = f.a(paramString);
    if (paramString != null) {
      return paramString;
    }
    return null;
  }
  
  public final String b()
  {
    return d;
  }
  
  public final bne c()
  {
    return g;
  }
  
  public final bnd.a d()
  {
    return new bnd.a(this, (byte)0);
  }
  
  public final bnd e()
  {
    return i;
  }
  
  public final List<bmn> f()
  {
    if (c == 401) {}
    for (String str = "WWW-Authenticate";; str = "Proxy-Authenticate")
    {
      return boa.a(f, str);
      if (c != 407) {
        break;
      }
    }
    return Collections.emptyList();
  }
  
  public final bmk g()
  {
    bmk localbmk = k;
    if (localbmk != null) {
      return localbmk;
    }
    localbmk = bmk.a(f);
    k = localbmk;
    return localbmk;
  }
  
  public final String toString()
  {
    return "Response{protocol=" + b + ", code=" + c + ", message=" + d + ", url=" + a.a + '}';
  }
  
  public static final class a
  {
    public bnb a;
    public bna b;
    public int c = -1;
    public String d;
    public bmu e;
    bmv.a f;
    public bne g;
    bnd h;
    bnd i;
    bnd j;
    
    public a()
    {
      f = new bmv.a();
    }
    
    private a(bnd parambnd)
    {
      a = a;
      b = b;
      c = c;
      d = d;
      e = e;
      f = f.b();
      g = g;
      h = h;
      i = i;
      j = j;
    }
    
    private static void a(String paramString, bnd parambnd)
    {
      if (g != null) {
        throw new IllegalArgumentException(paramString + ".body != null");
      }
      if (h != null) {
        throw new IllegalArgumentException(paramString + ".networkResponse != null");
      }
      if (i != null) {
        throw new IllegalArgumentException(paramString + ".cacheResponse != null");
      }
      if (j != null) {
        throw new IllegalArgumentException(paramString + ".priorResponse != null");
      }
    }
    
    public final a a(bmv parambmv)
    {
      f = parambmv.b();
      return this;
    }
    
    public final a a(bnd parambnd)
    {
      if (parambnd != null) {
        a("networkResponse", parambnd);
      }
      h = parambnd;
      return this;
    }
    
    public final a a(String paramString1, String paramString2)
    {
      f.b(paramString1, paramString2);
      return this;
    }
    
    public final bnd a()
    {
      if (a == null) {
        throw new IllegalStateException("request == null");
      }
      if (b == null) {
        throw new IllegalStateException("protocol == null");
      }
      if (c < 0) {
        throw new IllegalStateException("code < 0: " + c);
      }
      return new bnd(this, (byte)0);
    }
    
    public final a b(bnd parambnd)
    {
      if (parambnd != null) {
        a("cacheResponse", parambnd);
      }
      i = parambnd;
      return this;
    }
    
    public final a b(String paramString1, String paramString2)
    {
      f.a(paramString1, paramString2);
      return this;
    }
    
    public final a c(bnd parambnd)
    {
      if ((parambnd != null) && (g != null)) {
        throw new IllegalArgumentException("priorResponse.body != null");
      }
      j = parambnd;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     bnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */