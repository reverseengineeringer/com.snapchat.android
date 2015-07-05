import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URL;
import java.util.concurrent.TimeUnit;

public final class blo
{
  final blp a;
  public final bme b;
  public Socket c;
  boolean d = false;
  bmu e;
  bnw f;
  public blz g = blz.b;
  long h;
  public blt i;
  int j;
  private Object k;
  
  public blo(blp paramblp, bme parambme)
  {
    a = paramblp;
    b = parambme;
  }
  
  final void a(bma parambma, int paramInt1, int paramInt2)
  {
    bmu localbmu = new bmu(a, this, c);
    localbmu.a(paramInt1, paramInt2);
    Object localObject = parambma.a();
    String str = "CONNECT " + ((URL)localObject).getHost() + ":" + ((URL)localObject).getPort() + " HTTP/1.1";
    do
    {
      localbmu.a(c, str);
      localbmu.a();
      localObject = localbmu.c();
      a = parambma;
      parambma = ((bmc.a)localObject).a();
      long l2 = bmz.a(parambma);
      long l1 = l2;
      if (l2 == -1L) {
        l1 = 0L;
      }
      localObject = localbmu.a(l1);
      bmp.a((caj)localObject, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
      ((caj)localObject).close();
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
        localObject = bmz.a(b.a.h, parambma, b.b);
        parambma = (bma)localObject;
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
 * Qualified Name:     blo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */