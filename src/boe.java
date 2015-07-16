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

public final class boe
{
  final bmh a;
  final URI b;
  final bnp c;
  Proxy d;
  InetSocketAddress e;
  bmr f;
  List<Proxy> g = Collections.emptyList();
  int h;
  List<InetSocketAddress> i = Collections.emptyList();
  int j;
  List<bmr> k = Collections.emptyList();
  int l;
  final List<bnf> m = new ArrayList();
  private final bnm n;
  private final bmz o;
  private final bnb p;
  
  public boe(bmh parambmh, URI paramURI, bmz parambmz, bnb parambnb)
  {
    a = parambmh;
    b = paramURI;
    o = parambmz;
    c = bnj.b.b(parambmz);
    n = bnj.b.c(parambmz);
    p = parambnb;
    parambmh = a;
    if (parambmh != null) {
      g = Collections.singletonList(parambmh);
    }
    for (;;)
    {
      h = 0;
      return;
      g = new ArrayList();
      parambmh = o.j.select(paramURI);
      if (parambmh != null) {
        g.addAll(parambmh);
      }
      g.removeAll(Collections.singleton(Proxy.NO_PROXY));
      g.add(Proxy.NO_PROXY);
    }
  }
  
  public final void a(bnf parambnf, IOException paramIOException)
  {
    if ((b.type() != Proxy.Type.DIRECT) && (a.k != null)) {
      a.k.connectFailed(b, b.address(), paramIOException);
    }
    c.a(parambnf);
    if ((!(paramIOException instanceof SSLHandshakeException)) && (!(paramIOException instanceof SSLProtocolException))) {
      while (l < k.size())
      {
        parambnf = k;
        int i1 = l;
        l = (i1 + 1);
        parambnf = (bmr)parambnf.get(i1);
        boolean bool = a(parambnf);
        parambnf = new bnf(a, d, e, parambnf, bool);
        c.a(parambnf);
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
      i1 = bnq.a(b);
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
  
  final boolean a(bmr parambmr)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (parambmr != k.get(0))
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
      bmr localbmr = (bmr)localList.get(i1);
      if (p.e() == d) {
        k.add(localbmr);
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
 * Qualified Name:     boe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */