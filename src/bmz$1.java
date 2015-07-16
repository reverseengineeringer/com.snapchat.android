import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketException;
import java.net.URL;
import java.security.Principal;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

final class bmz$1
  extends bnj
{
  public final bnk a(bmz parambmz)
  {
    return l;
  }
  
  public final boh a(bmp parambmp, bnx parambnx)
  {
    if (f != null) {
      return new bof(parambnx, f);
    }
    return new bnz(parambnx, e);
  }
  
  public final void a(bmp parambmp, bna parambna)
  {
    if (parambna == null) {
      throw new IllegalArgumentException("protocol == null");
    }
    g = parambna;
  }
  
  public final void a(bmq parambmq, bmp parambmp)
  {
    if ((!parambmp.e()) && (parambmp.a()))
    {
      if (!parambmp.b()) {
        bnq.a(c);
      }
    }
    else {
      return;
    }
    try
    {
      bno.a().b(c);
      try
      {
        parambmq.a(parambmp);
        j += 1;
        if (f != null) {
          throw new IllegalStateException("spdyConnection != null");
        }
      }
      finally {}
      h = System.nanoTime();
    }
    catch (SocketException parambmq)
    {
      bno.a();
      bno.a("Unable to untagSocket(): " + parambmq);
      bnq.a(c);
      return;
    }
  }
  
  public final void a(bmv.a parama, String paramString)
  {
    parama.a(paramString);
  }
  
  public final void a(bmz parambmz, bmp parambmp, bnx parambnx, bnb parambnb)
  {
    Object localObject1 = null;
    parambmp.a(parambnx);
    int i;
    int j;
    if (!d)
    {
      parambnx = b;
      if ((a.e != null) && (b.type() == Proxy.Type.HTTP)) {}
      int k;
      for (i = 1; i == 0; i = 0)
      {
        parambnx = null;
        i = w;
        j = x;
        k = y;
        if (!d) {
          break label249;
        }
        throw new IllegalStateException("already connected");
      }
      Object localObject2 = parambnb.a().getHost();
      i = bnq.a(parambnb.a());
      if (i == bnq.a("https")) {}
      for (parambnx = (bnx)localObject2;; parambnx = (String)localObject2 + ":" + i)
      {
        parambnx = new bnb.a().a(new URL("https", (String)localObject2, i, "/")).a("Host", parambnx).a("Proxy-Connection", "Keep-Alive");
        localObject2 = parambnb.a("User-Agent");
        if (localObject2 != null) {
          parambnx.a("User-Agent", (String)localObject2);
        }
        parambnb = parambnb.a("Proxy-Authorization");
        if (parambnb != null) {
          parambnx.a("Proxy-Authorization", parambnb);
        }
        parambnx = parambnx.a();
        break;
      }
      label249:
      SSLSocket localSSLSocket;
      bnf localbnf;
      if ((b.b.type() == Proxy.Type.DIRECT) || (b.b.type() == Proxy.Type.HTTP))
      {
        c = b.a.d.createSocket();
        c.setSoTimeout(j);
        bno.a().a(c, b.c, i);
        if (b.a.e == null) {
          break label1072;
        }
        localObject2 = bno.a();
        if (parambnx != null) {
          parambmp.a(parambnx, j, k);
        }
        c = b.a.e.createSocket(c, b.a.b, b.a.c, true);
        localSSLSocket = (SSLSocket)c;
        parambnb = b.d;
        localbnf = b;
        parambnx = (bnx)localObject1;
        if (e != null)
        {
          parambnx = localSSLSocket.getEnabledCipherSuites();
          parambnx = (String[])bnq.a(String.class, e, parambnx);
        }
        localObject1 = localSSLSocket.getEnabledProtocols();
        localObject1 = (String[])bnq.a(String.class, f, (Object[])localObject1);
        localObject1 = new bmr.a(parambnb).a(parambnx).b((String[])localObject1).b();
        localSSLSocket.setEnabledProtocols(f);
        parambnx = e;
        parambnb = parambnx;
        if (e)
        {
          parambnb = parambnx;
          if (Arrays.asList(localSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
            if (parambnx == null) {
              break label838;
            }
          }
        }
      }
      for (;;)
      {
        parambnb = new String[parambnx.length + 1];
        System.arraycopy(parambnx, 0, parambnb, 0, parambnx.length);
        parambnb[(parambnb.length - 1)] = "TLS_FALLBACK_SCSV";
        if (parambnb != null) {
          localSSLSocket.setEnabledCipherSuites(parambnb);
        }
        parambnx = bno.a();
        if (g) {
          parambnx.a(localSSLSocket, a.b, a.i);
        }
        try
        {
          localSSLSocket.startHandshake();
          if (b.d.g)
          {
            parambnx = ((bno)localObject2).b(localSSLSocket);
            if (parambnx != null) {
              g = bna.a(parambnx);
            }
          }
          ((bno)localObject2).a(localSSLSocket);
          i = bmu.a(localSSLSocket.getSession());
          if (b.a.f.verify(b.a.b, localSSLSocket.getSession())) {
            break label857;
          }
          parambmz = (X509Certificate)localSSLSocket.getSession().getPeerCertificates()[0];
          throw new SSLPeerUnverifiedException("Hostname " + b.a.b + " not verified:\n    certificate: " + bmm.a(parambmz) + "\n    DN: " + parambmz.getSubjectDN().getName() + "\n    subjectAltNames: " + bpb.a(parambmz));
        }
        finally
        {
          ((bno)localObject2).a(localSSLSocket);
        }
        c = new Socket(b.b);
        break;
        label838:
        parambnx = localSSLSocket.getEnabledCipherSuites();
      }
      label857:
      b.a.g.a(b.a.b, i.b);
      if ((g == bna.c) || (g == bna.d))
      {
        localSSLSocket.setSoTimeout(0);
        parambnx = new box.a(b.a.b, c);
        d = g;
        f = new box(parambnx, (byte)0);
        parambnx = f;
        i.a();
        i.b(e);
        i = e.b();
        if (i != 65536) {
          i.a(0, i - 65536);
        }
      }
      for (;;)
      {
        d = true;
        if (!parambmp.e()) {
          break label1111;
        }
        parambnx = r;
        if (parambmp.e()) {
          break;
        }
        throw new IllegalArgumentException();
        e = new bnv(a, parambmp, c);
        continue;
        label1072:
        e = new bnv(a, parambmp, c);
      }
      if (!parambmp.b()) {}
    }
    try
    {
      parambnx.a(parambmp);
      label1111:
      c.b(b);
      i = x;
      j = y;
      if (!d) {
        throw new IllegalStateException("setTimeouts - not connected");
      }
    }
    finally {}
    if (e != null)
    {
      c.setSoTimeout(i);
      e.a(i, j);
    }
  }
  
  public final boolean a(bmp parambmp)
  {
    return parambmp.a();
  }
  
  public final int b(bmp parambmp)
  {
    return j;
  }
  
  public final bnp b(bmz parambmz)
  {
    return c;
  }
  
  public final void b(bmp parambmp, bnx parambnx)
  {
    parambmp.a(parambnx);
  }
  
  public final bnm c(bmz parambmz)
  {
    return bmz.a(parambmz);
  }
  
  public final boolean c(bmp parambmp)
  {
    if (e != null) {
      return e.b();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     bmz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */