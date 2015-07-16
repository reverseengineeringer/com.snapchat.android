import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URL;
import java.util.concurrent.TimeUnit;

public final class bmp
{
  final bmq a;
  public final bnf b;
  public Socket c;
  boolean d = false;
  bnv e;
  box f;
  public bna g = bna.b;
  long h;
  public bmu i;
  int j;
  private Object k;
  
  public bmp(bmq parambmq, bnf parambnf)
  {
    a = parambmq;
    b = parambnf;
  }
  
  final void a(bnb parambnb, int paramInt1, int paramInt2)
  {
    bnv localbnv = new bnv(a, this, c);
    localbnv.a(paramInt1, paramInt2);
    Object localObject = parambnb.a();
    String str = "CONNECT " + ((URL)localObject).getHost() + ":" + ((URL)localObject).getPort() + " HTTP/1.1";
    do
    {
      localbnv.a(c, str);
      localbnv.a();
      localObject = localbnv.c();
      a = parambnb;
      parambnb = ((bnd.a)localObject).a();
      long l2 = boa.a(parambnb);
      long l1 = l2;
      if (l2 == -1L) {
        l1 = 0L;
      }
      localObject = localbnv.a(l1);
      bnq.a((cbk)localObject, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
      ((cbk)localObject).close();
      switch (c)
      {
      default: 
        throw new IOException("Unexpected response code for CONNECT: " + c);
      case 200: 
        if (c.b().b <= 0L) {
          break;
        }
        throw new IOException("TLS tunnel buffered too many bytes!");
      case 407: 
        localObject = boa.a(b.a.h, parambnb, b.b);
        parambnb = (bnb)localObject;
      }
    } while (localObject != null);
    throw new IOException("Failed to authenticate with proxy");
  }
  
  final void a(Object paramObject)
  {
    if (e()) {
      return;
    }
    synchronized (a)
    {
      if (k != null) {
        throw new IllegalStateException("Connection already has an owner!");
      }
    }
    k = paramObject;
  }
  
  final boolean a()
  {
    synchronized (a)
    {
      if (k == null) {
        return false;
      }
      k = null;
      return true;
    }
  }
  
  final boolean b()
  {
    return (!c.isClosed()) && (!c.isInputShutdown()) && (!c.isOutputShutdown());
  }
  
  final boolean c()
  {
    return (f == null) || (f.a());
  }
  
  final long d()
  {
    if (f == null) {
      return h;
    }
    return f.b();
  }
  
  final boolean e()
  {
    return f != null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Connection{").append(b.a.b).append(":").append(b.a.c).append(", proxy=").append(b.b).append(" hostAddress=").append(b.c.getAddress().getHostAddress()).append(" cipherSuite=");
    if (i != null) {}
    for (String str = i.a;; str = "none") {
      return str + " protocol=" + g + '}';
    }
  }
}

/* Location:
 * Qualified Name:     bmp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */