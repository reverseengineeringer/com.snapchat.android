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

public final class blk
{
  final bly a;
  volatile boolean b;
  bma c;
  bmw d;
  private boolean e;
  
  protected blk(bly parambly, bma parambma)
  {
    bly localbly = new bly(parambly);
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
      n = parambly.b();
    }
    if (o == null) {
      o = boa.a;
    }
    if (p == null) {
      p = bll.a;
    }
    if (q == null) {
      q = bmq.a;
    }
    if (r == null) {
      r = blp.a();
    }
    if (f == null) {
      f = bly.a;
    }
    if (g == null) {
      g = bly.b;
    }
    if (s == null) {
      s = bml.a;
    }
    a = localbly;
    c = parambma;
  }
  
  public final bmc a()
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
      bmc localbmc1 = new blk.a(0, c, false).a(c);
      if (localbmc1 == null) {
        throw new IOException("Canceled");
      }
    }
    finally
    {
      a.d.b(this);
    }
    a.d.b(this);
    return localbmc2;
  }
  
  final bmc a(bma parambma, boolean paramBoolean)
  {
    bmb localbmb = d;
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
    bms.a locala;
    label572:
    label861:
    long l2;
    if (localbmb != null)
    {
      parambma = parambma.c();
      localObject2 = localbmb.a();
      if (localObject2 != null) {
        parambma.a("Content-Type", ((blw)localObject2).toString());
      }
      l1 = localbmb.b();
      if (l1 != -1L)
      {
        parambma.a("Content-Length", Long.toString(l1));
        parambma.b("Transfer-Encoding");
        parambma = parambma.a();
        d = new bmw(a, parambma, false, false, paramBoolean, null, null, null);
        j = 0;
      }
      for (;;)
      {
        if (b)
        {
          d.e();
          parambma = null;
          return parambma;
          parambma.a("Transfer-Encoding", "chunked");
          parambma.b("Content-Length");
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
          parambma = d;
          if ((e != null) && (c != null))
          {
            localObject2 = e;
            if (bmi.b.b(c) <= 0) {
              ((bnd)localObject2).a(c.b, localIOException);
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
            if ((!((bnd)localObject2).d()) && (!((bnd)localObject2).b()) && (!((bnd)localObject2).a()) && (!((bnd)localObject2).e())) {
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
        parambma = null;
        if (parambma == null) {
          break label2810;
        }
        d = parambma;
      }
      parambma = l;
      localObject1 = parambma.c();
      if (parambma.a("Host") == null) {
        ((bma.a)localObject1).a("Host", bmw.a(parambma.a()));
      }
      if (((c == null) || (c.g != blz.a)) && (parambma.a("Connection") == null)) {
        ((bma.a)localObject1).a("Connection", "Keep-Alive");
      }
      if (parambma.a("Accept-Encoding") == null)
      {
        j = true;
        ((bma.a)localObject1).a("Accept-Encoding", "gzip");
      }
      localObject2 = b.k;
      if (localObject2 != null)
      {
        localObject4 = bmz.b(ac);
        bmz.a((bma.a)localObject1, ((CookieHandler)localObject2).get(parambma.b(), (Map)localObject4));
      }
      if (parambma.a("User-Agent") == null) {
        ((bma.a)localObject1).a("User-Agent", "okhttp/2.3.0");
      }
      localObject4 = ((bma.a)localObject1).a();
      bmj localbmj = bmi.b.a(b);
      if (localbmj == null) {
        break label3326;
      }
      localObject1 = localbmj.a((bma)localObject4);
      locala = new bms.a(System.currentTimeMillis(), (bma)localObject4, (bmc)localObject1);
      if (c == null) {
        parambma = new bms(b, null, (byte)0);
      }
      for (;;)
      {
        localObject2 = parambma;
        if (a != null)
        {
          localObject2 = parambma;
          if (b.d().k) {
            localObject2 = new bms(null, null, (byte)0);
          }
        }
        u = ((bms)localObject2);
        m = u.a;
        n = u.b;
        if (localbmj != null) {
          localbmj.a(u);
        }
        if ((localObject1 != null) && (n == null)) {
          bmp.a(g);
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
          parambma = new bms(b, null, (byte)0);
        }
        else if (!bms.a(c, b))
        {
          parambma = new bms(b, null, (byte)0);
        }
        else
        {
          parambma = b.d();
          if ((!c) && (!bms.a.a(b))) {
            break;
          }
          parambma = new bms(b, null, (byte)0);
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
        parambma = c.d();
        if (l2 + l5 >= l1) {
          parambma.b("Warning", "110 HttpURLConnection \"Response is stale\"");
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
        parambma.b("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
      }
      parambma = new bms(null, parambma.a(), (byte)0);
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
        parambma = b.c();
        if (k != null) {
          parambma.a("If-None-Match", k);
        }
        for (;;)
        {
          parambma = parambma.a();
          if (!bms.a.a(parambma)) {
            break label1428;
          }
          parambma = new bms(parambma, c, (byte)0);
          break;
          if (f != null) {
            parambma.a("If-Modified-Since", g);
          } else if (d != null) {
            parambma.a("If-Modified-Since", e);
          }
        }
        parambma = new bms(parambma, null, (byte)0);
        break label572;
        if (e == null)
        {
          d = bmw.a(b, m);
          parambma = d;
          localObject1 = m;
          localObject2 = b;
          e = new bnd(parambma, ((bma)localObject1).b(), (bly)localObject2, (bma)localObject1);
        }
        parambma = ((bmw)localObject3).a();
        bmi.b.a(b, parambma, (bmw)localObject3, m);
        c = parambma;
        f = c.b;
        h = bmi.b.a(c, (bmw)localObject3);
        if ((r) && (((bmw)localObject3).c()) && (p == null))
        {
          l1 = bmz.a((bma)localObject4);
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
          p = new bnc((int)l1);
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
          p = new bnc();
          continue;
          h.a(m);
          p = h.a(m, l1);
        }
        if (c != null)
        {
          bmi.b.a(b.r, c);
          c = null;
        }
        if (n != null)
        {
          parambma = n.d();
          a = l;
        }
        for (o = parambma.c(bmw.a(g)).b(bmw.a(n)).a();; o = parambma.a())
        {
          o = ((bmw)localObject3).b(o);
          break;
          parambma = new bmc.a();
          a = l;
          parambma = parambma.c(bmw.a(g));
          b = blz.b;
          c = 504;
          d = "Unsatisfiable Request (only-if-cached)";
          g = bmw.a;
        }
        if (m != null)
        {
          if (!s) {
            break label2182;
          }
          h.a(m);
          parambma = ((bmw)localObject2).g();
          ((bmw)localObject2).a(f);
          if (n == null) {
            break label2431;
          }
          if (!bmw.a(n, parambma)) {
            break label2420;
          }
          localObject1 = n.d();
          a = l;
          o = ((bmc.a)localObject1).c(bmw.a(g)).a(bmw.a(n.f, f)).b(bmw.a(n)).a(bmw.a(parambma)).a();
          g.close();
          ((bmw)localObject2).e();
          parambma = bmi.b.a(b);
          parambma.a();
          parambma.a(n, bmw.a(o));
          o = ((bmw)localObject2).b(o);
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
            parambma = new bmw.a((bmw)localObject2, 0, m).a(m);
            break label1981;
          }
          if ((q != null) && (q.b().b > 0L)) {
            q.c();
          }
          if (i == -1L)
          {
            if ((bmz.a(m) == -1L) && ((p instanceof bnc)))
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
            if (!(p instanceof bnc)) {
              break label2418;
            }
            h.a((bnc)p);
            break;
            p.close();
          }
          break;
          bmp.a(n.g);
          localObject1 = parambma.d();
          a = l;
          o = ((bmc.a)localObject1).c(bmw.a(g)).b(bmw.a(n)).a(bmw.a(parambma)).a();
        } while (!bmw.c(o));
        parambma = bmi.b.a(b);
        if (parambma != null)
        {
          if (bms.a(o, m)) {
            break label2594;
          }
          boolean bool = bmx.a(m.b);
          if (!bool) {}
        }
        try
        {
          parambma.b(m);
          localObject3 = t;
          localObject1 = o;
          if (localObject3 == null) {
            parambma = (bma)localObject1;
          }
          for (;;)
          {
            o = ((bmw)localObject2).b(parambma);
            break;
            t = parambma.a(bmw.a(o));
            break label2558;
            localObject4 = ((bmr)localObject3).b();
            parambma = (bma)localObject1;
            if (localObject4 != null)
            {
              parambma = new bmw.2((bmw)localObject2, g.b(), (bmr)localObject3, cad.a((cai)localObject4));
              localObject3 = ((bmc)localObject1).d();
              g = new bna(f, cad.a(parambma));
              parambma = ((bmc.a)localObject3).a();
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
          localObject2 = parambma.f();
          parambma = new bmw(b, l, k, r, s, (blo)localObject2, e, g);
          break label309;
          throw ((Throwable)localObject1);
          if (f != null)
          {
            parambma = f.b;
            switch (o.c)
            {
            default: 
              parambma = null;
            }
          }
          for (;;)
          {
            if (parambma != null) {
              break label3214;
            }
            parambma = (bma)localObject1;
            if (paramBoolean) {
              break;
            }
            d.e();
            return (bmc)localObject1;
            parambma = b.e;
            break label2830;
            if (parambma.type() != Proxy.Type.HTTP) {
              throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            parambma = bmz.a(b.q, o, parambma);
            continue;
            if (((!l.b.equals("GET")) && (!l.b.equals("HEAD"))) || (!b.u)) {
              break label2912;
            }
            parambma = o.a("Location");
            if (parambma == null) {
              break label2912;
            }
            parambma = new URL(l.a(), parambma);
            if (((!parambma.getProtocol().equals("https")) && (!parambma.getProtocol().equals("http"))) || ((!parambma.getProtocol().equals(l.a().getProtocol())) && (!b.t))) {
              break label2912;
            }
            localObject3 = l.c();
            if (bmx.b(l.b))
            {
              ((bma.a)localObject3).a("GET", null);
              ((bma.a)localObject3).b("Transfer-Encoding");
              ((bma.a)localObject3).b("Content-Length");
              ((bma.a)localObject3).b("Content-Type");
            }
            if (!((bmw)localObject2).b(parambma)) {
              ((bma.a)localObject3).b("Authorization");
            }
            parambma = ((bma.a)localObject3).a(parambma).a();
          }
          j += 1;
          if (j > 20) {
            throw new ProtocolException("Too many follow-up requests: " + j);
          }
          if (!d.b(parambma.a())) {
            d.e();
          }
          localObject2 = d.f();
          d = new bmw(a, parambma, false, false, paramBoolean, (blo)localObject2, null, (bmc)localObject1);
        }
        catch (IOException parambma)
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
    implements blv.a
  {
    private final int b;
    private final bma c;
    private final boolean d;
    
    a(int paramInt, bma parambma, boolean paramBoolean)
    {
      b = paramInt;
      c = parambma;
      d = paramBoolean;
    }
    
    public final bmc a(bma parambma)
    {
      if (b < a.h.size())
      {
        new a(blk.this, b + 1, parambma, d);
        return ((blv)a.h.get(b)).a();
      }
      return a(parambma, d);
    }
  }
}

/* Location:
 * Qualified Name:     blk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */