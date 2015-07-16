import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URL;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class bml
{
  final bmz a;
  volatile boolean b;
  bnb c;
  bnx d;
  private boolean e;
  
  protected bml(bmz parambmz, bnb parambnb)
  {
    bmz localbmz = new bmz(parambmz);
    if (j == null) {
      j = ProxySelector.getDefault();
    }
    if (k == null) {
      k = CookieHandler.getDefault();
    }
    if (m == null) {
      m = SocketFactory.getDefault();
    }
    if (n == null) {
      n = parambmz.b();
    }
    if (o == null) {
      o = bpb.a;
    }
    if (p == null) {
      p = bmm.a;
    }
    if (q == null) {
      q = bnr.a;
    }
    if (r == null) {
      r = bmq.a();
    }
    if (f == null) {
      f = bmz.a;
    }
    if (g == null) {
      g = bmz.b;
    }
    if (s == null) {
      s = bnm.a;
    }
    a = localbmz;
    c = parambnb;
  }
  
  public final bnd a()
  {
    try
    {
      if (e) {
        throw new IllegalStateException("Already Executed");
      }
    }
    finally {}
    e = true;
    try
    {
      a.d.a(this);
      bnd localbnd1 = new bml.a(0, c, false).a(c);
      if (localbnd1 == null) {
        throw new IOException("Canceled");
      }
    }
    finally
    {
      a.d.b(this);
    }
    a.d.b(this);
    return localbnd2;
  }
  
  final bnd a(bnb parambnb, boolean paramBoolean)
  {
    bnc localbnc = d;
    Object localObject2;
    long l1;
    int j;
    Object localObject3;
    label240:
    label287:
    label303:
    label309:
    label321:
    Object localObject1;
    Object localObject4;
    label533:
    bnt.a locala;
    label572:
    label861:
    long l2;
    if (localbnc != null)
    {
      parambnb = parambnb.c();
      localObject2 = localbnc.a();
      if (localObject2 != null) {
        parambnb.a("Content-Type", ((bmx)localObject2).toString());
      }
      l1 = localbnc.b();
      if (l1 != -1L)
      {
        parambnb.a("Content-Length", Long.toString(l1));
        parambnb.b("Transfer-Encoding");
        parambnb = parambnb.a();
        d = new bnx(a, parambnb, false, false, paramBoolean, null, null, null);
        j = 0;
      }
      for (;;)
      {
        if (b)
        {
          d.e();
          parambnb = null;
          return parambnb;
          parambnb.a("Transfer-Encoding", "chunked");
          parambnb.b("Content-Length");
          break;
        }
        try
        {
          localObject3 = d;
          if (u != null) {
            break label1670;
          }
          if (h == null) {
            break label321;
          }
          throw new IllegalStateException();
        }
        catch (IOException localIOException)
        {
          parambnb = d;
          if ((e != null) && (c != null))
          {
            localObject2 = e;
            if (bnj.b.b(c) <= 0) {
              ((boe)localObject2).a(c.b, localIOException);
            }
          }
          if (e != null) {
            break label240;
          }
        }
        if (c != null) {
          if (e != null)
          {
            localObject2 = e;
            if ((!((boe)localObject2).d()) && (!((boe)localObject2).b()) && (!((boe)localObject2).a()) && (!((boe)localObject2).e())) {
              break label2695;
            }
            i = 1;
            if (i == 0) {}
          }
          else
          {
            if (b.v) {
              break label2700;
            }
            i = 0;
            if (i != 0) {
              break label2763;
            }
          }
        }
        parambnb = null;
        if (parambnb == null) {
          break label2810;
        }
        d = parambnb;
      }
      parambnb = l;
      localObject1 = parambnb.c();
      if (parambnb.a("Host") == null) {
        ((bnb.a)localObject1).a("Host", bnx.a(parambnb.a()));
      }
      if (((c == null) || (c.g != bna.a)) && (parambnb.a("Connection") == null)) {
        ((bnb.a)localObject1).a("Connection", "Keep-Alive");
      }
      if (parambnb.a("Accept-Encoding") == null)
      {
        j = true;
        ((bnb.a)localObject1).a("Accept-Encoding", "gzip");
      }
      localObject2 = b.k;
      if (localObject2 != null)
      {
        localObject4 = boa.b(ac);
        boa.a((bnb.a)localObject1, ((CookieHandler)localObject2).get(parambnb.b(), (Map)localObject4));
      }
      if (parambnb.a("User-Agent") == null) {
        ((bnb.a)localObject1).a("User-Agent", "okhttp/2.3.0");
      }
      localObject4 = ((bnb.a)localObject1).a();
      bnk localbnk = bnj.b.a(b);
      if (localbnk == null) {
        break label3326;
      }
      localObject1 = localbnk.a((bnb)localObject4);
      locala = new bnt.a(System.currentTimeMillis(), (bnb)localObject4, (bnd)localObject1);
      if (c == null) {
        parambnb = new bnt(b, null, (byte)0);
      }
      for (;;)
      {
        localObject2 = parambnb;
        if (a != null)
        {
          localObject2 = parambnb;
          if (b.d().k) {
            localObject2 = new bnt(null, null, (byte)0);
          }
        }
        u = ((bnt)localObject2);
        m = u.a;
        n = u.b;
        if (localbnk != null) {
          localbnk.a(u);
        }
        if ((localObject1 != null) && (n == null)) {
          bnq.a(g);
        }
        if (m == null) {
          break label1766;
        }
        if (c != null) {
          break label1554;
        }
        if (c == null) {
          break label1442;
        }
        throw new IllegalStateException();
        if ((b.e()) && (c.e == null))
        {
          parambnb = new bnt(b, null, (byte)0);
        }
        else if (!bnt.a(c, b))
        {
          parambnb = new bnt(b, null, (byte)0);
        }
        else
        {
          parambnb = b.d();
          if ((!c) && (!bnt.a.a(b))) {
            break;
          }
          parambnb = new bnt(b, null, (byte)0);
        }
      }
      if (d == null) {
        break label3332;
      }
      l1 = Math.max(0L, j - d.getTime());
      l2 = l1;
      if (l != -1) {
        l2 = Math.max(l1, TimeUnit.SECONDS.toMillis(l));
      }
      long l5 = l2 + (j - i) + (a - j);
      localObject2 = c.g();
      if (e != -1)
      {
        l1 = TimeUnit.SECONDS.toMillis(e);
        label954:
        if (e == -1) {
          break label3320;
        }
        l1 = Math.min(l1, TimeUnit.SECONDS.toMillis(e));
        label980:
        if (j == -1) {
          break label3314;
        }
        l2 = TimeUnit.SECONDS.toMillis(j);
        label1001:
        long l4 = 0L;
        localObject2 = c.g();
        long l3 = l4;
        if (!h)
        {
          l3 = l4;
          if (i != -1) {
            l3 = TimeUnit.SECONDS.toMillis(i);
          }
        }
        if ((c) || (l5 + l2 >= l3 + l1)) {
          break label1320;
        }
        parambnb = c.d();
        if (l2 + l5 >= l1) {
          parambnb.b("Warning", "110 HttpURLConnection \"Response is stale\"");
        }
        if (l5 > 86400000L) {
          if ((c.g().e != -1) || (h != null)) {
            break label3350;
          }
        }
      }
    }
    label1320:
    label1428:
    label1442:
    label1554:
    label1670:
    label1711:
    label1726:
    label1766:
    label1981:
    label2151:
    label2182:
    label2418:
    label2420:
    label2431:
    label2558:
    label2594:
    label2695:
    label2700:
    label2763:
    label2810:
    label2813:
    label2830:
    label2912:
    label3214:
    label3314:
    label3320:
    label3326:
    label3332:
    label3338:
    label3350:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        parambnb.b("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
      }
      parambnb = new bnt(null, parambnb.a(), (byte)0);
      break label572;
      if (h != null)
      {
        if (d != null) {}
        for (l1 = d.getTime();; l1 = j)
        {
          l2 = h.getTime() - l1;
          l1 = l2;
          if (l2 > 0L) {
            break;
          }
          l1 = 0L;
          break;
        }
      }
      if ((f != null) && (c.a.a().getQuery() == null))
      {
        if (d != null) {}
        for (l1 = d.getTime();; l1 = i)
        {
          l1 -= f.getTime();
          if (l1 <= 0L) {
            break label3338;
          }
          l1 /= 10L;
          break;
        }
        parambnb = b.c();
        if (k != null) {
          parambnb.a("If-None-Match", k);
        }
        for (;;)
        {
          parambnb = parambnb.a();
          if (!bnt.a.a(parambnb)) {
            break label1428;
          }
          parambnb = new bnt(parambnb, c, (byte)0);
          break;
          if (f != null) {
            parambnb.a("If-Modified-Since", g);
          } else if (d != null) {
            parambnb.a("If-Modified-Since", e);
          }
        }
        parambnb = new bnt(parambnb, null, (byte)0);
        break label572;
        if (e == null)
        {
          d = bnx.a(b, m);
          parambnb = d;
          localObject1 = m;
          localObject2 = b;
          e = new boe(parambnb, ((bnb)localObject1).b(), (bmz)localObject2, (bnb)localObject1);
        }
        parambnb = ((bnx)localObject3).a();
        bnj.b.a(b, parambnb, (bnx)localObject3, m);
        c = parambnb;
        f = c.b;
        h = bnj.b.a(c, (bnx)localObject3);
        if ((r) && (((bnx)localObject3).c()) && (p == null))
        {
          l1 = boa.a((bnb)localObject4);
          if (!k) {
            break label1726;
          }
          if (l1 > 2147483647L) {
            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
          }
          if (l1 == -1L) {
            break label1711;
          }
          h.a(m);
          p = new bod((int)l1);
        }
        for (;;)
        {
          localObject2 = d;
          if (o != null) {
            break label2151;
          }
          if ((m != null) || (n != null)) {
            break;
          }
          throw new IllegalStateException("call sendRequest() first!");
          p = new bod();
          continue;
          h.a(m);
          p = h.a(m, l1);
        }
        if (c != null)
        {
          bnj.b.a(b.r, c);
          c = null;
        }
        if (n != null)
        {
          parambnb = n.d();
          a = l;
        }
        for (o = parambnb.c(bnx.a(g)).b(bnx.a(n)).a();; o = parambnb.a())
        {
          o = ((bnx)localObject3).b(o);
          break;
          parambnb = new bnd.a();
          a = l;
          parambnb = parambnb.c(bnx.a(g));
          b = bna.b;
          c = 504;
          d = "Unsatisfiable Request (only-if-cached)";
          g = bnx.a;
        }
        if (m != null)
        {
          if (!s) {
            break label2182;
          }
          h.a(m);
          parambnb = ((bnx)localObject2).g();
          ((bnx)localObject2).a(f);
          if (n == null) {
            break label2431;
          }
          if (!bnx.a(n, parambnb)) {
            break label2420;
          }
          localObject1 = n.d();
          a = l;
          o = ((bnd.a)localObject1).c(bnx.a(g)).a(bnx.a(n.f, f)).b(bnx.a(n)).a(bnx.a(parambnb)).a();
          g.close();
          ((bnx)localObject2).e();
          parambnb = bnj.b.a(b);
          parambnb.a();
          parambnb.a(n, bnx.a(o));
          o = ((bnx)localObject2).b(o);
        }
        do
        {
          localObject1 = d.d();
          localObject2 = d;
          if (o != null) {
            break label2813;
          }
          throw new IllegalStateException();
          if (!r)
          {
            parambnb = new bnx.a((bnx)localObject2, 0, m).a(m);
            break label1981;
          }
          if ((q != null) && (q.b().b > 0L)) {
            q.c();
          }
          if (i == -1L)
          {
            if ((boa.a(m) == -1L) && ((p instanceof bod)))
            {
              l1 = p).a.b;
              m = m.c().a("Content-Length", Long.toString(l1)).a();
            }
            h.a(m);
          }
          if (p == null) {
            break;
          }
          if (q != null) {
            q.close();
          }
          for (;;)
          {
            if (!(p instanceof bod)) {
              break label2418;
            }
            h.a((bod)p);
            break;
            p.close();
          }
          break;
          bnq.a(n.g);
          localObject1 = parambnb.d();
          a = l;
          o = ((bnd.a)localObject1).c(bnx.a(g)).b(bnx.a(n)).a(bnx.a(parambnb)).a();
        } while (!bnx.c(o));
        parambnb = bnj.b.a(b);
        if (parambnb != null)
        {
          if (bnt.a(o, m)) {
            break label2594;
          }
          boolean bool = bny.a(m.b);
          if (!bool) {}
        }
        try
        {
          parambnb.b(m);
          localObject3 = t;
          localObject1 = o;
          if (localObject3 == null) {
            parambnb = (bnb)localObject1;
          }
          for (;;)
          {
            o = ((bnx)localObject2).b(parambnb);
            break;
            t = parambnb.a(bnx.a(o));
            break label2558;
            localObject4 = ((bns)localObject3).b();
            parambnb = (bnb)localObject1;
            if (localObject4 != null)
            {
              parambnb = new bnx.2((bnx)localObject2, g.b(), (bns)localObject3, cbe.a((cbj)localObject4));
              localObject3 = ((bnd)localObject1).d();
              g = new bob(f, cbe.a(parambnb));
              parambnb = ((bnd.a)localObject3).a();
            }
          }
          i = 0;
          break label287;
          if (((localObject1 instanceof SSLPeerUnverifiedException)) || (((localObject1 instanceof SSLHandshakeException)) && ((((IOException)localObject1).getCause() instanceof CertificateException))))
          {
            i = 0;
            break label303;
          }
          if ((localObject1 instanceof ProtocolException))
          {
            i = 0;
            break label303;
          }
          if ((localObject1 instanceof InterruptedIOException))
          {
            i = 0;
            break label303;
          }
          i = 1;
          break label303;
          localObject2 = parambnb.f();
          parambnb = new bnx(b, l, k, r, s, (bmp)localObject2, e, g);
          break label309;
          throw ((Throwable)localObject1);
          if (f != null)
          {
            parambnb = f.b;
            switch (o.c)
            {
            default: 
              parambnb = null;
            }
          }
          for (;;)
          {
            if (parambnb != null) {
              break label3214;
            }
            parambnb = (bnb)localObject1;
            if (paramBoolean) {
              break;
            }
            d.e();
            return (bnd)localObject1;
            parambnb = b.e;
            break label2830;
            if (parambnb.type() != Proxy.Type.HTTP) {
              throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            parambnb = boa.a(b.q, o, parambnb);
            continue;
            if (((!l.b.equals("GET")) && (!l.b.equals("HEAD"))) || (!b.u)) {
              break label2912;
            }
            parambnb = o.a("Location");
            if (parambnb == null) {
              break label2912;
            }
            parambnb = new URL(l.a(), parambnb);
            if (((!parambnb.getProtocol().equals("https")) && (!parambnb.getProtocol().equals("http"))) || ((!parambnb.getProtocol().equals(l.a().getProtocol())) && (!b.t))) {
              break label2912;
            }
            localObject3 = l.c();
            if (bny.b(l.b))
            {
              ((bnb.a)localObject3).a("GET", null);
              ((bnb.a)localObject3).b("Transfer-Encoding");
              ((bnb.a)localObject3).b("Content-Length");
              ((bnb.a)localObject3).b("Content-Type");
            }
            if (!((bnx)localObject2).b(parambnb)) {
              ((bnb.a)localObject3).b("Authorization");
            }
            parambnb = ((bnb.a)localObject3).a(parambnb).a();
          }
          j += 1;
          if (j > 20) {
            throw new ProtocolException("Too many follow-up requests: " + j);
          }
          if (!d.b(parambnb.a())) {
            d.e();
          }
          localObject2 = d.f();
          d = new bnx(a, parambnb, false, false, paramBoolean, (bmp)localObject2, null, (bnd)localObject1);
        }
        catch (IOException parambnb)
        {
          for (;;) {}
        }
        l2 = 0L;
        break label1001;
        break label980;
        break;
        localObject1 = null;
        break label533;
        l1 = 0L;
        break label861;
        l1 = 0L;
        break label954;
      }
      l1 = 0L;
      break label954;
    }
  }
  
  final class a
    implements bmw.a
  {
    private final int b;
    private final bnb c;
    private final boolean d;
    
    a(int paramInt, bnb parambnb, boolean paramBoolean)
    {
      b = paramInt;
      c = parambnb;
      d = paramBoolean;
    }
    
    public final bnd a(bnb parambnb)
    {
      if (b < a.h.size())
      {
        new a(bml.this, b + 1, parambnb, d);
        return ((bmw)a.h.get(b)).a();
      }
      return a(parambnb, d);
    }
  }
}

/* Location:
 * Qualified Name:     bml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */