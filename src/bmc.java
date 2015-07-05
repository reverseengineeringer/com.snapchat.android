import java.util.Collections;
import java.util.List;

public final class bmc
{
  public final bma a;
  public final blz b;
  public final int c;
  public final String d;
  public final blt e;
  public final blu f;
  public final bmd g;
  public bmc h;
  bmc i;
  final bmc j;
  private volatile blj k;
  
  private bmc(bmc.a parama)
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
  
  public final bmd c()
  {
    return g;
  }
  
  public final bmc.a d()
  {
    return new bmc.a(this, (byte)0);
  }
  
  public final bmc e()
  {
    return i;
  }
  
  public final List<blm> f()
  {
    if (c == 401) {}
    for (String str = "WWW-Authenticate";; str = "Proxy-Authenticate")
    {
      return bmz.a(f, str);
      if (c != 407) {
        break;
      }
    }
    return Collections.emptyList();
  }
  
  public final blj g()
  {
    blj localblj = k;
    if (localblj != null) {
      return localblj;
    }
    localblj = blj.a(f);
    k = localblj;
    return localblj;
  }
  
  public final String toString()
  {
    return "Response{protocol=" + b + ", code=" + c + ", message=" + d + ", url=" + a.a + '}';
  }
  
  public static final class a
  {
    public bma a;
    public blz b;
    public int c = -1;
    public String d;
    public blt e;
    blu.a f;
    public bmd g;
    bmc h;
    bmc i;
    bmc j;
    
    public a()
    {
      f = new blu.a();
    }
    
    private a(bmc parambmc)
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
    
    private static void a(String paramString, bmc parambmc)
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
    
    public final a a(blu paramblu)
    {
      f = paramblu.b();
      return this;
    }
    
    public final a a(bmc parambmc)
    {
      if (parambmc != null) {
        a("networkResponse", parambmc);
      }
      h = parambmc;
      return this;
    }
    
    public final a a(String paramString1, String paramString2)
    {
      f.b(paramString1, paramString2);
      return this;
    }
    
    public final bmc a()
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
      return new bmc(this, (byte)0);
    }
    
    public final a b(bmc parambmc)
    {
      if (parambmc != null) {
        a("cacheResponse", parambmc);
      }
      i = parambmc;
      return this;
    }
    
    public final a b(String paramString1, String paramString2)
    {
      f.a(paramString1, paramString2);
      return this;
    }
    
    public final a c(bmc parambmc)
    {
      if ((parambmc != null) && (g != null)) {
        throw new IllegalArgumentException("priorResponse.body != null");
      }
      j = parambmc;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     bmc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */