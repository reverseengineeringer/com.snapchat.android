import java.io.IOException;
import java.net.CookieHandler;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class bnx
{
  public static final bne a = new bne()
  {
    public final long a()
    {
      return 0L;
    }
    
    public final cax b()
    {
      return new cav();
    }
  };
  public final bmz b;
  public bmp c;
  public bmh d;
  public boe e;
  public bnf f;
  public final bnd g;
  public boh h;
  public long i = -1L;
  public boolean j;
  public final boolean k;
  public final bnb l;
  public bnb m;
  public bnd n;
  public bnd o;
  public cbj p;
  public caw q;
  public final boolean r;
  public final boolean s;
  public bns t;
  public bnt u;
  
  public bnx(bmz parambmz, bnb parambnb, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, bmp parambmp, boe paramboe, bnd parambnd)
  {
    b = parambmz;
    l = parambnb;
    k = paramBoolean1;
    r = paramBoolean2;
    s = paramBoolean3;
    c = parambmp;
    e = paramboe;
    p = null;
    g = parambnd;
    if (parambmp != null)
    {
      bnj.b.b(parambmp, this);
      f = b;
      return;
    }
    f = null;
  }
  
  public static bmh a(bmz parambmz, bnb parambnb)
  {
    bmm localbmm = null;
    String str = parambnb.a().getHost();
    if ((str == null) || (str.length() == 0)) {
      throw new UnknownHostException(parambnb.a().toString());
    }
    SSLSocketFactory localSSLSocketFactory;
    HostnameVerifier localHostnameVerifier;
    if (parambnb.e())
    {
      localSSLSocketFactory = n;
      localHostnameVerifier = o;
      localbmm = p;
    }
    for (;;)
    {
      return new bmh(str, bnq.a(parambnb.a()), m, localSSLSocketFactory, localHostnameVerifier, localbmm, q, e, f, g, j);
      localHostnameVerifier = null;
      localSSLSocketFactory = null;
    }
  }
  
  public static bmv a(bmv parambmv1, bmv parambmv2)
  {
    int i2 = 0;
    bmv.a locala = new bmv.a();
    int i3 = a.length / 2;
    int i1 = 0;
    while (i1 < i3)
    {
      String str1 = parambmv1.a(i1);
      String str2 = parambmv1.b(i1);
      if (((!"Warning".equalsIgnoreCase(str1)) || (!str2.startsWith("1"))) && ((!boa.a(str1)) || (parambmv2.a(str1) == null))) {
        locala.a(str1, str2);
      }
      i1 += 1;
    }
    i3 = a.length / 2;
    i1 = i2;
    while (i1 < i3)
    {
      parambmv1 = parambmv2.a(i1);
      if ((!"Content-Length".equalsIgnoreCase(parambmv1)) && (boa.a(parambmv1))) {
        locala.a(parambmv1, parambmv2.b(i1));
      }
      i1 += 1;
    }
    return locala.a();
  }
  
  public static bnd a(bnd parambnd)
  {
    bnd localbnd = parambnd;
    if (parambnd != null)
    {
      localbnd = parambnd;
      if (g != null)
      {
        parambnd = parambnd.d();
        g = null;
        localbnd = parambnd.a();
      }
    }
    return localbnd;
  }
  
  public static String a(URL paramURL)
  {
    if (bnq.a(paramURL) != bnq.a(paramURL.getProtocol())) {
      return paramURL.getHost() + ":" + paramURL.getPort();
    }
    return paramURL.getHost();
  }
  
  public static boolean a(bnd parambnd1, bnd parambnd2)
  {
    if (c == 304) {}
    do
    {
      return true;
      parambnd1 = f.b("Last-Modified");
      if (parambnd1 == null) {
        break;
      }
      parambnd2 = f.b("Last-Modified");
    } while ((parambnd2 != null) && (parambnd2.getTime() < parambnd1.getTime()));
    return false;
  }
  
  public static boolean c(bnd parambnd)
  {
    if (a.b.equals("HEAD")) {}
    do
    {
      return false;
      int i1 = c;
      if (((i1 < 100) || (i1 >= 200)) && (i1 != 204) && (i1 != 304)) {
        return true;
      }
    } while ((boa.a(parambnd) == -1L) && (!"chunked".equalsIgnoreCase(parambnd.a("Transfer-Encoding"))));
    return true;
  }
  
  public final bmp a()
  {
    bmq localbmq = b.r;
    Object localObject1;
    for (;;)
    {
      localObject1 = localbmq.a(d);
      if (localObject1 == null) {
        break;
      }
      if ((m.b.equals("GET")) || (bnj.b.c((bmp)localObject1))) {
        return (bmp)localObject1;
      }
      c.close();
    }
    boe localboe = e;
    for (;;)
    {
      if (!localboe.d()) {
        if (!localboe.b()) {
          if (!localboe.a())
          {
            if (!localboe.e()) {
              throw new NoSuchElementException();
            }
            localObject1 = (bnf)m.remove(0);
          }
        }
      }
      Object localObject2;
      do
      {
        return new bmp(localbmq, (bnf)localObject1);
        if (!localboe.a()) {
          throw new SocketException("No route to " + a.b + "; exhausted proxy configurations: " + g);
        }
        localObject1 = g;
        int i1 = h;
        h = (i1 + 1);
        localObject1 = (Proxy)((List)localObject1).get(i1);
        localboe.a((Proxy)localObject1);
        d = ((Proxy)localObject1);
        if (!localboe.b()) {
          throw new SocketException("No route to " + a.b + "; exhausted inet socket addresses: " + i);
        }
        localObject1 = i;
        i1 = j;
        j = (i1 + 1);
        localObject1 = (InetSocketAddress)((List)localObject1).get(i1);
        localboe.c();
        e = ((InetSocketAddress)localObject1);
        if (k.isEmpty())
        {
          localObject2 = new StringBuilder("No route to ");
          if (b.getScheme() != null) {}
          for (localObject1 = b.getScheme() + "://";; localObject1 = "//") {
            throw new UnknownServiceException((String)localObject1 + a.b + "; no connection specs");
          }
        }
        if (!localboe.d())
        {
          localObject2 = new StringBuilder("No route to ");
          if (b.getScheme() != null) {}
          for (localObject1 = b.getScheme() + "://";; localObject1 = "//") {
            throw new SocketException((String)localObject1 + a.b + "; exhausted connection specs: " + k);
          }
        }
        localObject1 = k;
        i1 = l;
        l = (i1 + 1);
        f = ((bmr)((List)localObject1).get(i1));
        boolean bool = localboe.a(f);
        localObject2 = new bnf(a, d, e, f, bool);
        localObject1 = localObject2;
      } while (!c.c((bnf)localObject2));
      m.add(localObject2);
    }
  }
  
  public final void a(bmv parambmv)
  {
    CookieHandler localCookieHandler = b.k;
    if (localCookieHandler != null) {
      localCookieHandler.put(l.b(), boa.b(parambmv));
    }
  }
  
  public final bnd b(bnd parambnd)
  {
    if ((!j) || (!"gzip".equalsIgnoreCase(o.a("Content-Encoding")))) {}
    while (g == null) {
      return parambnd;
    }
    cbc localcbc = new cbc(g.b());
    bmv localbmv = f.b().b("Content-Encoding").b("Content-Length").a();
    parambnd = parambnd.d().a(localbmv);
    g = new bob(localbmv, cbe.a(localcbc));
    return parambnd.a();
  }
  
  public final void b()
  {
    if (i != -1L) {
      throw new IllegalStateException();
    }
    i = System.currentTimeMillis();
  }
  
  public final boolean b(URL paramURL)
  {
    URL localURL = l.a();
    return (localURL.getHost().equals(paramURL.getHost())) && (bnq.a(localURL) == bnq.a(paramURL)) && (localURL.getProtocol().equals(paramURL.getProtocol()));
  }
  
  public final boolean c()
  {
    return bny.b(l.b);
  }
  
  public final bnd d()
  {
    if (o == null) {
      throw new IllegalStateException();
    }
    return o;
  }
  
  public final void e()
  {
    if ((h != null) && (c != null)) {
      h.c();
    }
    c = null;
  }
  
  public final bmp f()
  {
    if (q != null) {
      bnq.a(q);
    }
    while (o == null)
    {
      if (c != null) {
        bnq.a(c.c);
      }
      c = null;
      return null;
      if (p != null) {
        bnq.a(p);
      }
    }
    bnq.a(o.g);
    if ((h != null) && (c != null) && (!h.d()))
    {
      bnq.a(c.c);
      c = null;
      return null;
    }
    if ((c != null) && (!bnj.b.a(c))) {
      c = null;
    }
    bmp localbmp = c;
    c = null;
    return localbmp;
  }
  
  public final bnd g()
  {
    h.a();
    Object localObject = h.b();
    a = m;
    e = c.i;
    bnd localbnd = ((bnd.a)localObject).a(boa.b, Long.toString(i)).a(boa.c, Long.toString(System.currentTimeMillis())).a();
    localObject = localbnd;
    if (!s)
    {
      localObject = localbnd.d();
      g = h.a(localbnd);
      localObject = ((bnd.a)localObject).a();
    }
    bnj.b.a(c, b);
    return (bnd)localObject;
  }
  
  public final class a
    implements bmw.a
  {
    private final int b;
    private final bnb c;
    private int d;
    
    public a(int paramInt, bnb parambnb)
    {
      b = paramInt;
      c = parambnb;
    }
    
    public final bnd a(bnb parambnb)
    {
      d += 1;
      Object localObject1;
      Object localObject2;
      if (b > 0)
      {
        localObject1 = (bmw)b.i.get(b - 1);
        localObject2 = ab.a;
        if ((!parambnb.a().getHost().equals(b)) || (bnq.a(parambnb.a()) != c)) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
        }
        if (d > 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
      }
      if (b < b.i.size())
      {
        parambnb = new a(bnx.this, b + 1, parambnb);
        localObject1 = (bmw)b.i.get(b);
        localObject2 = ((bmw)localObject1).a();
        if (d != 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
        return (bnd)localObject2;
      }
      bnx.b(bnx.this).a(parambnb);
      if ((c()) && (d != null))
      {
        localObject1 = cbe.a(bnx.b(bnx.this).a(parambnb, d.b()));
        d.a((caw)localObject1);
        ((caw)localObject1).close();
      }
      return bnx.c(bnx.this);
    }
  }
}

/* Location:
 * Qualified Name:     bnx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */