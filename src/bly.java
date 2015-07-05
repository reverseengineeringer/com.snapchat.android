import java.net.CookieHandler;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.SocketException;
import java.net.URL;
import java.security.Principal;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class bly
  implements Cloneable
{
  static final List<blz> a = bmp.a(new blz[] { blz.d, blz.c, blz.b });
  static final List<blq> b = bmp.a(new blq[] { blq.a, blq.b, blq.c });
  private static SSLSocketFactory z;
  private bli A;
  final bmo c;
  bls d;
  public Proxy e;
  public List<blz> f;
  public List<blq> g;
  final List<blv> h = new ArrayList();
  public final List<blv> i = new ArrayList();
  public ProxySelector j;
  public CookieHandler k;
  bmj l;
  public SocketFactory m;
  public SSLSocketFactory n;
  public HostnameVerifier o;
  public bll p;
  public blh q;
  public blp r;
  bml s;
  public boolean t = true;
  public boolean u = true;
  public boolean v = true;
  int w;
  public int x;
  int y;
  
  static
  {
    bmi.b = new bmi()
    {
      public final bmj a(bly paramAnonymousbly)
      {
        return l;
      }
      
      public final bng a(blo paramAnonymousblo, bmw paramAnonymousbmw)
      {
        if (f != null) {
          return new bne(paramAnonymousbmw, f);
        }
        return new bmy(paramAnonymousbmw, e);
      }
      
      public final void a(blo paramAnonymousblo, blz paramAnonymousblz)
      {
        if (paramAnonymousblz == null) {
          throw new IllegalArgumentException("protocol == null");
        }
        g = paramAnonymousblz;
      }
      
      public final void a(blp paramAnonymousblp, blo paramAnonymousblo)
      {
        if ((!paramAnonymousblo.e()) && (paramAnonymousblo.a()))
        {
          if (!paramAnonymousblo.b()) {
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
            paramAnonymousblp.a(paramAnonymousblo);
            j += 1;
            if (f != null) {
              throw new IllegalStateException("spdyConnection != null");
            }
          }
          finally {}
          h = System.nanoTime();
        }
        catch (SocketException paramAnonymousblp)
        {
          bmn.a();
          bmn.a("Unable to untagSocket(): " + paramAnonymousblp);
          bmp.a(c);
          return;
        }
      }
      
      public final void a(blu.a paramAnonymousa, String paramAnonymousString)
      {
        paramAnonymousa.a(paramAnonymousString);
      }
      
      public final void a(bly paramAnonymousbly, blo paramAnonymousblo, bmw paramAnonymousbmw, bma paramAnonymousbma)
      {
        Object localObject1 = null;
        paramAnonymousblo.a(paramAnonymousbmw);
        int i;
        int j;
        if (!d)
        {
          paramAnonymousbmw = b;
          if ((a.e != null) && (b.type() == Proxy.Type.HTTP)) {}
          int k;
          for (i = 1; i == 0; i = 0)
          {
            paramAnonymousbmw = null;
            i = w;
            j = x;
            k = y;
            if (!d) {
              break label249;
            }
            throw new IllegalStateException("already connected");
          }
          Object localObject2 = paramAnonymousbma.a().getHost();
          i = bmp.a(paramAnonymousbma.a());
          if (i == bmp.a("https")) {}
          for (paramAnonymousbmw = (bmw)localObject2;; paramAnonymousbmw = (String)localObject2 + ":" + i)
          {
            paramAnonymousbmw = new bma.a().a(new URL("https", (String)localObject2, i, "/")).a("Host", paramAnonymousbmw).a("Proxy-Connection", "Keep-Alive");
            localObject2 = paramAnonymousbma.a("User-Agent");
            if (localObject2 != null) {
              paramAnonymousbmw.a("User-Agent", (String)localObject2);
            }
            paramAnonymousbma = paramAnonymousbma.a("Proxy-Authorization");
            if (paramAnonymousbma != null) {
              paramAnonymousbmw.a("Proxy-Authorization", paramAnonymousbma);
            }
            paramAnonymousbmw = paramAnonymousbmw.a();
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
            if (paramAnonymousbmw != null) {
              paramAnonymousblo.a(paramAnonymousbmw, j, k);
            }
            c = b.a.e.createSocket(c, b.a.b, b.a.c, true);
            localSSLSocket = (SSLSocket)c;
            paramAnonymousbma = b.d;
            localbme = b;
            paramAnonymousbmw = (bmw)localObject1;
            if (e != null)
            {
              paramAnonymousbmw = localSSLSocket.getEnabledCipherSuites();
              paramAnonymousbmw = (String[])bmp.a(String.class, e, paramAnonymousbmw);
            }
            localObject1 = localSSLSocket.getEnabledProtocols();
            localObject1 = (String[])bmp.a(String.class, f, (Object[])localObject1);
            localObject1 = new blq.a(paramAnonymousbma).a(paramAnonymousbmw).b((String[])localObject1).b();
            localSSLSocket.setEnabledProtocols(f);
            paramAnonymousbmw = e;
            paramAnonymousbma = paramAnonymousbmw;
            if (e)
            {
              paramAnonymousbma = paramAnonymousbmw;
              if (Arrays.asList(localSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
                if (paramAnonymousbmw == null) {
                  break label838;
                }
              }
            }
          }
          for (;;)
          {
            paramAnonymousbma = new String[paramAnonymousbmw.length + 1];
            System.arraycopy(paramAnonymousbmw, 0, paramAnonymousbma, 0, paramAnonymousbmw.length);
            paramAnonymousbma[(paramAnonymousbma.length - 1)] = "TLS_FALLBACK_SCSV";
            if (paramAnonymousbma != null) {
              localSSLSocket.setEnabledCipherSuites(paramAnonymousbma);
            }
            paramAnonymousbmw = bmn.a();
            if (g) {
              paramAnonymousbmw.a(localSSLSocket, a.b, a.i);
            }
            try
            {
              localSSLSocket.startHandshake();
              if (b.d.g)
              {
                paramAnonymousbmw = ((bmn)localObject2).b(localSSLSocket);
                if (paramAnonymousbmw != null) {
                  g = blz.a(paramAnonymousbmw);
                }
              }
              ((bmn)localObject2).a(localSSLSocket);
              i = blt.a(localSSLSocket.getSession());
              if (b.a.f.verify(b.a.b, localSSLSocket.getSession())) {
                break label857;
              }
              paramAnonymousbly = (X509Certificate)localSSLSocket.getSession().getPeerCertificates()[0];
              throw new SSLPeerUnverifiedException("Hostname " + b.a.b + " not verified:\n    certificate: " + bll.a(paramAnonymousbly) + "\n    DN: " + paramAnonymousbly.getSubjectDN().getName() + "\n    subjectAltNames: " + boa.a(paramAnonymousbly));
            }
            finally
            {
              ((bmn)localObject2).a(localSSLSocket);
            }
            c = new Socket(b.b);
            break;
            label838:
            paramAnonymousbmw = localSSLSocket.getEnabledCipherSuites();
          }
          label857:
          b.a.g.a(b.a.b, i.b);
          if ((g == blz.c) || (g == blz.d))
          {
            localSSLSocket.setSoTimeout(0);
            paramAnonymousbmw = new bnw.a(b.a.b, c);
            d = g;
            f = new bnw(paramAnonymousbmw, (byte)0);
            paramAnonymousbmw = f;
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
            if (!paramAnonymousblo.e()) {
              break label1111;
            }
            paramAnonymousbmw = r;
            if (paramAnonymousblo.e()) {
              break;
            }
            throw new IllegalArgumentException();
            e = new bmu(a, paramAnonymousblo, c);
            continue;
            label1072:
            e = new bmu(a, paramAnonymousblo, c);
          }
          if (!paramAnonymousblo.b()) {}
        }
        try
        {
          paramAnonymousbmw.a(paramAnonymousblo);
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
      
      public final boolean a(blo paramAnonymousblo)
      {
        return paramAnonymousblo.a();
      }
      
      public final int b(blo paramAnonymousblo)
      {
        return j;
      }
      
      public final bmo b(bly paramAnonymousbly)
      {
        return c;
      }
      
      public final void b(blo paramAnonymousblo, bmw paramAnonymousbmw)
      {
        paramAnonymousblo.a(paramAnonymousbmw);
      }
      
      public final bml c(bly paramAnonymousbly)
      {
        return bly.a(paramAnonymousbly);
      }
      
      public final boolean c(blo paramAnonymousblo)
      {
        if (e != null) {
          return e.b();
        }
        return true;
      }
    };
  }
  
  public bly()
  {
    c = new bmo();
    d = new bls();
  }
  
  bly(bly parambly)
  {
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    h.addAll(h);
    i.addAll(i);
    j = j;
    k = k;
    A = A;
    if (A != null) {}
    for (bmj localbmj = A.a;; localbmj = l)
    {
      l = localbmj;
      m = m;
      n = n;
      o = o;
      p = p;
      q = q;
      r = r;
      s = s;
      t = t;
      u = u;
      v = v;
      w = w;
      x = x;
      y = y;
      return;
    }
  }
  
  private bly c()
  {
    try
    {
      bly localbly = (bly)super.clone();
      return localbly;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public final bli a()
  {
    return A;
  }
  
  public final blk a(bma parambma)
  {
    return new blk(this, parambma);
  }
  
  public final bly a(bli parambli)
  {
    A = parambli;
    l = null;
    return this;
  }
  
  public final void a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    long l1 = paramTimeUnit.toMillis(paramLong);
    if (l1 > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    if ((l1 == 0L) && (paramLong > 0L)) {
      throw new IllegalArgumentException("Timeout too small.");
    }
    w = ((int)l1);
  }
  
  public final void a(TimeUnit paramTimeUnit)
  {
    if (20000L < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    long l1 = paramTimeUnit.toMillis(20000L);
    if (l1 > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    if ((l1 == 0L) && (20000L > 0L)) {
      throw new IllegalArgumentException("Timeout too small.");
    }
    y = ((int)l1);
  }
  
  /* Error */
  final SSLSocketFactory b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 211	bly:z	Ljavax/net/ssl/SSLSocketFactory;
    //   5: astore_1
    //   6: aload_1
    //   7: ifnonnull +23 -> 30
    //   10: ldc -43
    //   12: invokestatic 219	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   15: astore_1
    //   16: aload_1
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 223	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   23: aload_1
    //   24: invokevirtual 226	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   27: putstatic 211	bly:z	Ljavax/net/ssl/SSLSocketFactory;
    //   30: getstatic 211	bly:z	Ljavax/net/ssl/SSLSocketFactory;
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: areturn
    //   38: astore_1
    //   39: new 172	java/lang/AssertionError
    //   42: dup
    //   43: invokespecial 173	java/lang/AssertionError:<init>	()V
    //   46: athrow
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	bly
    //   5	32	1	localObject1	Object
    //   38	1	1	localGeneralSecurityException	java.security.GeneralSecurityException
    //   47	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	30	38	java/security/GeneralSecurityException
    //   2	6	47	finally
    //   10	30	47	finally
    //   30	34	47	finally
    //   39	47	47	finally
  }
  
  public final void b(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    long l1 = paramTimeUnit.toMillis(paramLong);
    if (l1 > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    if ((l1 == 0L) && (paramLong > 0L)) {
      throw new IllegalArgumentException("Timeout too small.");
    }
    x = ((int)l1);
  }
}

/* Location:
 * Qualified Name:     bly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */