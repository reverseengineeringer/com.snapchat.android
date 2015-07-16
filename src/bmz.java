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

public class bmz
  implements Cloneable
{
  static final List<bna> a = bnq.a(new bna[] { bna.d, bna.c, bna.b });
  static final List<bmr> b = bnq.a(new bmr[] { bmr.a, bmr.b, bmr.c });
  private static SSLSocketFactory z;
  private bmj A;
  final bnp c;
  bmt d;
  public Proxy e;
  public List<bna> f;
  public List<bmr> g;
  final List<bmw> h = new ArrayList();
  public final List<bmw> i = new ArrayList();
  public ProxySelector j;
  public CookieHandler k;
  bnk l;
  public SocketFactory m;
  public SSLSocketFactory n;
  public HostnameVerifier o;
  public bmm p;
  public bmi q;
  public bmq r;
  bnm s;
  public boolean t = true;
  public boolean u = true;
  public boolean v = true;
  int w;
  public int x;
  int y;
  
  static
  {
    bnj.b = new bnj()
    {
      public final bnk a(bmz paramAnonymousbmz)
      {
        return l;
      }
      
      public final boh a(bmp paramAnonymousbmp, bnx paramAnonymousbnx)
      {
        if (f != null) {
          return new bof(paramAnonymousbnx, f);
        }
        return new bnz(paramAnonymousbnx, e);
      }
      
      public final void a(bmp paramAnonymousbmp, bna paramAnonymousbna)
      {
        if (paramAnonymousbna == null) {
          throw new IllegalArgumentException("protocol == null");
        }
        g = paramAnonymousbna;
      }
      
      public final void a(bmq paramAnonymousbmq, bmp paramAnonymousbmp)
      {
        if ((!paramAnonymousbmp.e()) && (paramAnonymousbmp.a()))
        {
          if (!paramAnonymousbmp.b()) {
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
            paramAnonymousbmq.a(paramAnonymousbmp);
            j += 1;
            if (f != null) {
              throw new IllegalStateException("spdyConnection != null");
            }
          }
          finally {}
          h = System.nanoTime();
        }
        catch (SocketException paramAnonymousbmq)
        {
          bno.a();
          bno.a("Unable to untagSocket(): " + paramAnonymousbmq);
          bnq.a(c);
          return;
        }
      }
      
      public final void a(bmv.a paramAnonymousa, String paramAnonymousString)
      {
        paramAnonymousa.a(paramAnonymousString);
      }
      
      public final void a(bmz paramAnonymousbmz, bmp paramAnonymousbmp, bnx paramAnonymousbnx, bnb paramAnonymousbnb)
      {
        Object localObject1 = null;
        paramAnonymousbmp.a(paramAnonymousbnx);
        int i;
        int j;
        if (!d)
        {
          paramAnonymousbnx = b;
          if ((a.e != null) && (b.type() == Proxy.Type.HTTP)) {}
          int k;
          for (i = 1; i == 0; i = 0)
          {
            paramAnonymousbnx = null;
            i = w;
            j = x;
            k = y;
            if (!d) {
              break label249;
            }
            throw new IllegalStateException("already connected");
          }
          Object localObject2 = paramAnonymousbnb.a().getHost();
          i = bnq.a(paramAnonymousbnb.a());
          if (i == bnq.a("https")) {}
          for (paramAnonymousbnx = (bnx)localObject2;; paramAnonymousbnx = (String)localObject2 + ":" + i)
          {
            paramAnonymousbnx = new bnb.a().a(new URL("https", (String)localObject2, i, "/")).a("Host", paramAnonymousbnx).a("Proxy-Connection", "Keep-Alive");
            localObject2 = paramAnonymousbnb.a("User-Agent");
            if (localObject2 != null) {
              paramAnonymousbnx.a("User-Agent", (String)localObject2);
            }
            paramAnonymousbnb = paramAnonymousbnb.a("Proxy-Authorization");
            if (paramAnonymousbnb != null) {
              paramAnonymousbnx.a("Proxy-Authorization", paramAnonymousbnb);
            }
            paramAnonymousbnx = paramAnonymousbnx.a();
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
            if (paramAnonymousbnx != null) {
              paramAnonymousbmp.a(paramAnonymousbnx, j, k);
            }
            c = b.a.e.createSocket(c, b.a.b, b.a.c, true);
            localSSLSocket = (SSLSocket)c;
            paramAnonymousbnb = b.d;
            localbnf = b;
            paramAnonymousbnx = (bnx)localObject1;
            if (e != null)
            {
              paramAnonymousbnx = localSSLSocket.getEnabledCipherSuites();
              paramAnonymousbnx = (String[])bnq.a(String.class, e, paramAnonymousbnx);
            }
            localObject1 = localSSLSocket.getEnabledProtocols();
            localObject1 = (String[])bnq.a(String.class, f, (Object[])localObject1);
            localObject1 = new bmr.a(paramAnonymousbnb).a(paramAnonymousbnx).b((String[])localObject1).b();
            localSSLSocket.setEnabledProtocols(f);
            paramAnonymousbnx = e;
            paramAnonymousbnb = paramAnonymousbnx;
            if (e)
            {
              paramAnonymousbnb = paramAnonymousbnx;
              if (Arrays.asList(localSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
                if (paramAnonymousbnx == null) {
                  break label838;
                }
              }
            }
          }
          for (;;)
          {
            paramAnonymousbnb = new String[paramAnonymousbnx.length + 1];
            System.arraycopy(paramAnonymousbnx, 0, paramAnonymousbnb, 0, paramAnonymousbnx.length);
            paramAnonymousbnb[(paramAnonymousbnb.length - 1)] = "TLS_FALLBACK_SCSV";
            if (paramAnonymousbnb != null) {
              localSSLSocket.setEnabledCipherSuites(paramAnonymousbnb);
            }
            paramAnonymousbnx = bno.a();
            if (g) {
              paramAnonymousbnx.a(localSSLSocket, a.b, a.i);
            }
            try
            {
              localSSLSocket.startHandshake();
              if (b.d.g)
              {
                paramAnonymousbnx = ((bno)localObject2).b(localSSLSocket);
                if (paramAnonymousbnx != null) {
                  g = bna.a(paramAnonymousbnx);
                }
              }
              ((bno)localObject2).a(localSSLSocket);
              i = bmu.a(localSSLSocket.getSession());
              if (b.a.f.verify(b.a.b, localSSLSocket.getSession())) {
                break label857;
              }
              paramAnonymousbmz = (X509Certificate)localSSLSocket.getSession().getPeerCertificates()[0];
              throw new SSLPeerUnverifiedException("Hostname " + b.a.b + " not verified:\n    certificate: " + bmm.a(paramAnonymousbmz) + "\n    DN: " + paramAnonymousbmz.getSubjectDN().getName() + "\n    subjectAltNames: " + bpb.a(paramAnonymousbmz));
            }
            finally
            {
              ((bno)localObject2).a(localSSLSocket);
            }
            c = new Socket(b.b);
            break;
            label838:
            paramAnonymousbnx = localSSLSocket.getEnabledCipherSuites();
          }
          label857:
          b.a.g.a(b.a.b, i.b);
          if ((g == bna.c) || (g == bna.d))
          {
            localSSLSocket.setSoTimeout(0);
            paramAnonymousbnx = new box.a(b.a.b, c);
            d = g;
            f = new box(paramAnonymousbnx, (byte)0);
            paramAnonymousbnx = f;
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
            if (!paramAnonymousbmp.e()) {
              break label1111;
            }
            paramAnonymousbnx = r;
            if (paramAnonymousbmp.e()) {
              break;
            }
            throw new IllegalArgumentException();
            e = new bnv(a, paramAnonymousbmp, c);
            continue;
            label1072:
            e = new bnv(a, paramAnonymousbmp, c);
          }
          if (!paramAnonymousbmp.b()) {}
        }
        try
        {
          paramAnonymousbnx.a(paramAnonymousbmp);
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
      
      public final boolean a(bmp paramAnonymousbmp)
      {
        return paramAnonymousbmp.a();
      }
      
      public final int b(bmp paramAnonymousbmp)
      {
        return j;
      }
      
      public final bnp b(bmz paramAnonymousbmz)
      {
        return c;
      }
      
      public final void b(bmp paramAnonymousbmp, bnx paramAnonymousbnx)
      {
        paramAnonymousbmp.a(paramAnonymousbnx);
      }
      
      public final bnm c(bmz paramAnonymousbmz)
      {
        return bmz.a(paramAnonymousbmz);
      }
      
      public final boolean c(bmp paramAnonymousbmp)
      {
        if (e != null) {
          return e.b();
        }
        return true;
      }
    };
  }
  
  public bmz()
  {
    c = new bnp();
    d = new bmt();
  }
  
  bmz(bmz parambmz)
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
    for (bnk localbnk = A.a;; localbnk = l)
    {
      l = localbnk;
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
  
  private bmz c()
  {
    try
    {
      bmz localbmz = (bmz)super.clone();
      return localbmz;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public final bmj a()
  {
    return A;
  }
  
  public final bml a(bnb parambnb)
  {
    return new bml(this, parambnb);
  }
  
  public final bmz a(bmj parambmj)
  {
    A = parambmj;
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
    //   2: getstatic 211	bmz:z	Ljavax/net/ssl/SSLSocketFactory;
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
    //   27: putstatic 211	bmz:z	Ljavax/net/ssl/SSLSocketFactory;
    //   30: getstatic 211	bmz:z	Ljavax/net/ssl/SSLSocketFactory;
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
    //   0	52	0	this	bmz
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
 * Qualified Name:     bmz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */