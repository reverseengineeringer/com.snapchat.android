import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLProtocolException;

public final class bnd
{
  final blg a;
  final URI b;
  final bmo c;
  Proxy d;
  InetSocketAddress e;
  blq f;
  List<Proxy> g = Collections.emptyList();
  int h;
  List<InetSocketAddress> i = Collections.emptyList();
  int j;
  List<blq> k = Collections.emptyList();
  int l;
  final List<bme> m = new ArrayList();
  private final bml n;
  private final bly o;
  private final bma p;
  
  public bnd(blg paramblg, URI paramURI, bly parambly, bma parambma)
  {
    a = paramblg;
    b = paramURI;
    o = parambly;
    c = bmi.b.b(parambly);
    n = bmi.b.c(parambly);
    p = parambma;
    paramblg = a;
    if (paramblg != null) {
      g = Collections.singletonList(paramblg);
    }
    for (;;)
    {
      h = 0;
      return;
      g = new ArrayList();
      paramblg = o.j.select(paramURI);
      if (paramblg != null) {
        g.addAll(paramblg);
      }
      g.removeAll(Collections.singleton(Proxy.NO_PROXY));
      g.add(Proxy.NO_PROXY);
    }
  }
  
  public final void a(bme parambme, IOException paramIOException)
  {
    if ((b.type() != Proxy.Type.DIRECT) && (a.k != null)) {
      a.k.connectFailed(b, b.address(), paramIOException);
    }
    c.a(parambme);
    if ((!(paramIOException instanceof SSLHandshakeException)) && (!(paramIOException instanceof SSLProtocolException))) {
      while (l < k.size())
      {
        parambme = k;
        int i1 = l;
        l = (i1 + 1);
        parambme = (blq)parambme.get(i1);
        boolean bool = a(parambme);
        parambme = new bme(a, d, e, parambme, bool);
        c.a(parambme);
      }
    }
  }
  
  final void a(Proxy paramProxy)
  {
    i = new ArrayList();
    int i1;
    InetSocketAddress localInetSocketAddress;
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS))
    {
      paramProxy = a.b;
      i1 = bmp.a(b);
      if ((i1 <= 0) || (i1 > 65535)) {
        throw new SocketException("No route to " + paramProxy + ":" + i1 + "; port is out of range");
      }
    }
    else
    {
      paramProxy = paramProxy.address();
      if (!(paramProxy instanceof InetSocketAddress)) {
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + paramProxy.getClass());
      }
      localInetSocketAddress = (InetSocketAddress)paramProxy;
      paramProxy = localInetSocketAddress.getAddress();
      if (paramProxy == null) {}
      for (paramProxy = localInetSocketAddress.getHostName();; paramProxy = paramProxy.getHostAddress())
      {
        i1 = localInetSocketAddress.getPort();
        break;
      }
    }
    paramProxy = n.a(paramProxy);
    int i3 = paramProxy.length;
    int i2 = 0;
    while (i2 < i3)
    {
      localInetSocketAddress = paramProxy[i2];
      i.add(new InetSocketAddress(localInetSocketAddress, i1));
      i2 += 1;
    }
    j = 0;
  }
  
  public final boolean a()
  {
    return h < g.size();
  }
  
  final boolean a(blq paramblq)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramblq != k.get(0))
    {
      bool1 = bool2;
      if (d) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final boolean b()
  {
    return j < i.size();
  }
  
  final void c()
  {
    k = new ArrayList();
    List localList = a.j;
    int i2 = localList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      blq localblq = (blq)localList.get(i1);
      if (p.e() == d) {
        k.add(localblq);
      }
      i1 += 1;
    }
    l = 0;
  }
  
  public final boolean d()
  {
    return l < k.size();
  }
  
  public final boolean e()
  {
    return !m.isEmpty();
  }
}

/* Location:
 * Qualified Name:     bnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */