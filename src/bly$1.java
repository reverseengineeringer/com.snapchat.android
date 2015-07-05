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

final class bly$1
  extends bmi
{
  public final bmj a(bly parambly)
  {
    return l;
  }
  
  public final bng a(blo paramblo, bmw parambmw)
  {
    if (f != null) {
      return new bne(parambmw, f);
    }
    return new bmy(parambmw, e);
  }
  
  public final void a(blo paramblo, blz paramblz)
  {
    if (paramblz == null) {
      throw new IllegalArgumentException("protocol == null");
    }
    g = paramblz;
  }
  
  public final void a(blp paramblp, blo paramblo)
  {
    if ((!paramblo.e()) && (paramblo.a()))
    {
      if (!paramblo.b()) {
        bmp.a(c);
      }
    }
    else {
      return;
    }
    try
    {
      bmn.a().b(c);
      try
      {
        paramblp.a(paramblo);
        j += 1;
        if (f != null) {
          throw new IllegalStateException("spdyConnection != null");
        }
      }
      finally {}
      h = System.nanoTime();
    }
    catch (SocketException paramblp)
    {
      bmn.a();
      bmn.a("Unable to untagSocket(): " + paramblp);
      bmp.a(c);
      return;
    }
  }
  
  public final void a(blu.a parama, String paramString)
  {
    parama.a(paramString);
  }
  
  public final void a(bly parambly, blo paramblo, bmw parambmw, bma parambma)
  {
    Object localObject1 = null;
    paramblo.a(parambmw);
    int i;
    int j;
    if (!d)
    {
      parambmw = b;
      if ((a.e != null) && (b.type() == Proxy.Type.HTTP)) {}
      int k;
      for (i = 1; i == 0; i = 0)
      {
        parambmw = null;
        i = w;
        j = x;
        k = y;
        if (!d) {
          break label249;
        }
        throw new IllegalStateException("already connected");
      }
      Object localObject2 = parambma.a().getHost();
      i = bmp.a(parambma.a());
      if (i == bmp.a("https")) {}
      for (parambmw = (bmw)localObject2;; parambmw = (String)localObject2 + ":" + i)
      {
        parambmw = new bma.a().a(new URL("https", (String)localObject2, i, "/")).a("Host", parambmw).a("Proxy-Connection", "Keep-Alive");
        localObject2 = parambma.a("User-Agent");
        if (localObject2 != null) {
          parambmw.a("User-Agent", (String)localObject2);
        }
        parambma = parambma.a("Proxy-Authorization");
        if (parambma != null) {
          parambmw.a("Proxy-Authorization", parambma);
        }
        parambmw = parambmw.a();
        break;
      }
      label249:
      SSLSocket localSSLSocket;
      bme localbme;
      if ((b.b.type() == Proxy.Type.DIRECT) || (b.b.type() == Proxy.Type.HTTP))
      {
        c = b.a.d.createSocket();
        c.setSoTimeout(j);
        bmn.a().a(c, b.c, i);
        if (b.a.e == null) {
          break label1072;
        }
        localObject2 = bmn.a();
        if (parambmw != null) {
          paramblo.a(parambmw, j, k);
        }
        c = b.a.e.createSocket(c, b.a.b, b.a.c, true);
        localSSLSocket = (SSLSocket)c;
        parambma = b.d;
        localbme = b;
        parambmw = (bmw)localObject1;
        if (e != null)
        {
          parambmw = localSSLSocket.getEnabledCipherSuites();
          parambmw = (String[])bmp.a(String.class, e, parambmw);
        }
        localObject1 = localSSLSocket.getEnabledProtocols();
        localObject1 = (String[])bmp.a(String.class, f, (Object[])localObject1);
        localObject1 = new blq.a(parambma).a(parambmw).b((String[])localObject1).b();
        localSSLSocket.setEnabledProtocols(f);
        parambmw = e;
        parambma = parambmw;
        if (e)
        {
          parambma = parambmw;
          if (Arrays.asList(localSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
            if (parambmw == null) {
              break label838;
            }
          }
        }
      }
      for (;;)
      {
        parambma = new String[parambmw.length + 1];
        System.arraycopy(parambmw, 0, parambma, 0, parambmw.length);
        parambma[(parambma.length - 1)] = "TLS_FALLBACK_SCSV";
        if (parambma != null) {
          localSSLSocket.setEnabledCipherSuites(parambma);
        }
        parambmw = bmn.a();
        if (g) {
          parambmw.a(localSSLSocket, a.b, a.i);
        }
        try
        {
          localSSLSocket.startHandshake();
          if (b.d.g)
          {
            parambmw = ((bmn)localObject2).b(localSSLSocket);
            if (parambmw != null) {
              g = blz.a(parambmw);
            }
          }
          ((bmn)localObject2).a(localSSLSocket);
          i = blt.a(localSSLSocket.getSession());
          if (b.a.f.verify(b.a.b, localSSLSocket.getSession())) {
            break label857;
          }
          parambly = (X509Certificate)localSSLSocket.getSession().getPeerCertificates()[0];
          throw new SSLPeerUnverifiedException("Hostname " + b.a.b + " not verified:\n    certificate: " + bll.a(parambly) + "\n    DN: " + parambly.getSubjectDN().getName() + "\n    subjectAltNames: " + boa.a(parambly));
        }
        finally
        {
          ((bmn)localObject2).a(localSSLSocket);
        }
        c = new Socket(b.b);
        break;
        label838:
        parambmw = localSSLSocket.getEnabledCipherSuites();
      }
      label857:
      b.a.g.a(b.a.b, i.b);
      if ((g == blz.c) || (g == blz.d))
      {
        localSSLSocket.setSoTimeout(0);
        parambmw = new bnw.a(b.a.b, c);
        d = g;
        f = new bnw(parambmw, (byte)0);
        parambmw = f;
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
        if (!paramblo.e()) {
          break label1111;
        }
        parambmw = r;
        if (paramblo.e()) {
          break;
        }
        throw new IllegalArgumentException();
        e = new bmu(a, paramblo, c);
        continue;
        label1072:
        e = new bmu(a, paramblo, c);
      }
      if (!paramblo.b()) {}
    }
    try
    {
      parambmw.a(paramblo);
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
  
  public final boolean a(blo paramblo)
  {
    return paramblo.a();
  }
  
  public final int b(blo paramblo)
  {
    return j;
  }
  
  public final bmo b(bly parambly)
  {
    return c;
  }
  
  public final void b(blo paramblo, bmw parambmw)
  {
    paramblo.a(parambmw);
  }
  
  public final bml c(bly parambly)
  {
    return bly.a(parambly);
  }
  
  public final boolean c(blo paramblo)
  {
    if (e != null) {
      return e.b();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     bly.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */