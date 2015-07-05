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

public final class bmw
{
  public static final bmd a = new bmd()
  {
    public final long a()
    {
      return 0L;
    }
    
    public final bzw b()
    {
      return new bzu();
    }
  };
  public final bly b;
  public blo c;
  public blg d;
  public bnd e;
  public bme f;
  public final bmc g;
  public bng h;
  public long i = -1L;
  public boolean j;
  public final boolean k;
  public final bma l;
  public bma m;
  public bmc n;
  public bmc o;
  public cai p;
  public bzv q;
  public final boolean r;
  public final boolean s;
  public bmr t;
  public bms u;
  
  public bmw(bly parambly, bma parambma, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, blo paramblo, bnd parambnd, bmc parambmc)
  {
    b = parambly;
    l = parambma;
    k = paramBoolean1;
    r = paramBoolean2;
    s = paramBoolean3;
    c = paramblo;
    e = parambnd;
    p = null;
    g = parambmc;
    if (paramblo != null)
    {
      bmi.b.b(paramblo, this);
      f = b;
      return;
    }
    f = null;
  }
  
  public static blg a(bly parambly, bma parambma)
  {
    bll localbll = null;
    String str = parambma.a().getHost();
    if ((str == null) || (str.length() == 0)) {
      throw new UnknownHostException(parambma.a().toString());
    }
    SSLSocketFactory localSSLSocketFactory;
    HostnameVerifier localHostnameVerifier;
    if (parambma.e())
    {
      localSSLSocketFactory = n;
      localHostnameVerifier = o;
      localbll = p;
    }
    for (;;)
    {
      return new blg(str, bmp.a(parambma.a()), m, localSSLSocketFactory, localHostnameVerifier, localbll, q, e, f, g, j);
      localHostnameVerifier = null;
      localSSLSocketFactory = null;
    }
  }
  
  public static blu a(blu paramblu1, blu paramblu2)
  {
    int i2 = 0;
    blu.a locala = new blu.a();
    int i3 = a.length / 2;
    int i1 = 0;
    while (i1 < i3)
    {
      String str1 = paramblu1.a(i1);
      String str2 = paramblu1.b(i1);
      if (((!"Warning".equalsIgnoreCase(str1)) || (!str2.startsWith("1"))) && ((!bmz.a(str1)) || (paramblu2.a(str1) == null))) {
        locala.a(str1, str2);
      }
      i1 += 1;
    }
    i3 = a.length / 2;
    i1 = i2;
    while (i1 < i3)
    {
      paramblu1 = paramblu2.a(i1);
      if ((!"Content-Length".equalsIgnoreCase(paramblu1)) && (bmz.a(paramblu1))) {
        locala.a(paramblu1, paramblu2.b(i1));
      }
      i1 += 1;
    }
    return locala.a();
  }
  
  public static bmc a(bmc parambmc)
  {
    bmc localbmc = parambmc;
    if (parambmc != null)
    {
      localbmc = parambmc;
      if (g != null)
      {
        parambmc = parambmc.d();
        g = null;
        localbmc = parambmc.a();
      }
    }
    return localbmc;
  }
  
  public static String a(URL paramURL)
  {
    if (bmp.a(paramURL) != bmp.a(paramURL.getProtocol())) {
      return paramURL.getHost() + ":" + paramURL.getPort();
    }
    return paramURL.getHost();
  }
  
  public static boolean a(bmc parambmc1, bmc parambmc2)
  {
    if (c == 304) {}
    do
    {
      return true;
      parambmc1 = f.b("Last-Modified");
      if (parambmc1 == null) {
        break;
      }
      parambmc2 = f.b("Last-Modified");
    } while ((parambmc2 != null) && (parambmc2.getTime() < parambmc1.getTime()));
    return false;
  }
  
  public static boolean c(bmc parambmc)
  {
    if (a.b.equals("HEAD")) {}
    do
    {
      return false;
      int i1 = c;
      if (((i1 < 100) || (i1 >= 200)) && (i1 != 204) && (i1 != 304)) {
        return true;
      }
    } while ((bmz.a(parambmc) == -1L) && (!"chunked".equalsIgnoreCase(parambmc.a("Transfer-Encoding"))));
    return true;
  }
  
  public final blo a()
  {
    blp localblp = b.r;
    Object localObject1;
    for (;;)
    {
      localObject1 = localblp.a(d);
      if (localObject1 == null) {
        break;
      }
      if ((m.b.equals("GET")) || (bmi.b.c((blo)localObject1))) {
        return (blo)localObject1;
      }
      c.close();
    }
    bnd localbnd = e;
    for (;;)
    {
      if (!localbnd.d()) {
        if (!localbnd.b()) {
          if (!localbnd.a())
          {
            if (!localbnd.e()) {
              throw new NoSuchElementException();
            }
            localObject1 = (bme)m.remove(0);
          }
        }
      }
      Object localObject2;
      do
      {
        return new blo(localblp, (bme)localObject1);
        if (!localbnd.a()) {
          throw new SocketException("No route to " + a.b + "; exhausted proxy configurations: " + g);
        }
        localObject1 = g;
        int i1 = h;
        h = (i1 + 1);
        localObject1 = (Proxy)((List)localObject1).get(i1);
        localbnd.a((Proxy)localObject1);
        d = ((Proxy)localObject1);
        if (!localbnd.b()) {
          throw new SocketException("No route to " + a.b + "; exhausted inet socket addresses: " + i);
        }
        localObject1 = i;
        i1 = j;
        j = (i1 + 1);
        localObject1 = (InetSocketAddress)((List)localObject1).get(i1);
        localbnd.c();
        e = ((InetSocketAddress)localObject1);
        if (k.isEmpty())
        {
          localObject2 = new StringBuilder("No route to ");
          if (b.getScheme() != null) {}
          for (localObject1 = b.getScheme() + "://";; localObject1 = "//") {
            throw new UnknownServiceException((String)localObject1 + a.b + "; no connection specs");
          }
        }
        if (!localbnd.d())
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
        f = ((blq)((List)localObject1).get(i1));
        boolean bool = localbnd.a(f);
        localObject2 = new bme(a, d, e, f, bool);
        localObject1 = localObject2;
      } while (!c.c((bme)localObject2));
      m.add(localObject2);
    }
  }
  
  public final void a(blu paramblu)
  {
    CookieHandler localCookieHandler = b.k;
    if (localCookieHandler != null) {
      localCookieHandler.put(l.b(), bmz.b(paramblu));
    }
  }
  
  public final bmc b(bmc parambmc)
  {
    if ((!j) || (!"gzip".equalsIgnoreCase(o.a("Content-Encoding")))) {}
    while (g == null) {
      return parambmc;
    }
    cab localcab = new cab(g.b());
    blu localblu = f.b().b("Content-Encoding").b("Content-Length").a();
    parambmc = parambmc.d().a(localblu);
    g = new bna(localblu, cad.a(localcab));
    return parambmc.a();
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
    return (localURL.getHost().equals(paramURL.getHost())) && (bmp.a(localURL) == bmp.a(paramURL)) && (localURL.getProtocol().equals(paramURL.getProtocol()));
  }
  
  public final boolean c()
  {
    return bmx.b(l.b);
  }
  
  public final bmc d()
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
  
  public final blo f()
  {
    if (q != null) {
      bmp.a(q);
    }
    while (o == null)
    {
      if (c != null) {
        bmp.a(c.c);
      }
      c = null;
      return null;
      if (p != null) {
        bmp.a(p);
      }
    }
    bmp.a(o.g);
    if ((h != null) && (c != null) && (!h.d()))
    {
      bmp.a(c.c);
      c = null;
      return null;
    }
    if ((c != null) && (!bmi.b.a(c))) {
      c = null;
    }
    blo localblo = c;
    c = null;
    return localblo;
  }
  
  public final bmc g()
  {
    h.a();
    Object localObject = h.b();
    a = m;
    e = c.i;
    bmc localbmc = ((bmc.a)localObject).a(bmz.b, Long.toString(i)).a(bmz.c, Long.toString(System.currentTimeMillis())).a();
    localObject = localbmc;
    if (!s)
    {
      localObject = localbmc.d();
      g = h.a(localbmc);
      localObject = ((bmc.a)localObject).a();
    }
    bmi.b.a(c, b);
    return (bmc)localObject;
  }
  
  public final class a
    implements blv.a
  {
    private final int b;
    private final bma c;
    private int d;
    
    public a(int paramInt, bma parambma)
    {
      b = paramInt;
      c = parambma;
    }
    
    public final bmc a(bma parambma)
    {
      d += 1;
      Object localObject1;
      Object localObject2;
      if (b > 0)
      {
        localObject1 = (blv)b.i.get(b - 1);
        localObject2 = ab.a;
        if ((!parambma.a().getHost().equals(b)) || (bmp.a(parambma.a()) != c)) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
        }
        if (d > 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
      }
      if (b < b.i.size())
      {
        parambma = new a(bmw.this, b + 1, parambma);
        localObject1 = (blv)b.i.get(b);
        localObject2 = ((blv)localObject1).a();
        if (d != 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
        return (bmc)localObject2;
      }
      bmw.b(bmw.this).a(parambma);
      if ((c()) && (d != null))
      {
        localObject1 = cad.a(bmw.b(bmw.this).a(parambma, d.b()));
        d.a((bzv)localObject1);
        ((bzv)localObject1).close();
      }
      return bmw.c(bmw.this);
    }
  }
}

/* Location:
 * Qualified Name:     bmw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */