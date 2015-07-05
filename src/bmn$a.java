import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import javax.net.ssl.SSLSocket;

final class bmn$a
  extends bmn
{
  private final bmm<Socket> a;
  private final bmm<Socket> b;
  private final Method c;
  private final Method d;
  private final bmm<Socket> e;
  private final bmm<Socket> f;
  
  public bmn$a(bmm<Socket> parambmm1, bmm<Socket> parambmm2, Method paramMethod1, Method paramMethod2, bmm<Socket> parambmm3, bmm<Socket> parambmm4)
  {
    a = parambmm1;
    b = parambmm2;
    c = paramMethod1;
    d = paramMethod2;
    e = parambmm3;
    f = parambmm4;
  }
  
  public final void a(Socket paramSocket)
  {
    if (c == null) {
      return;
    }
    try
    {
      c.invoke(null, new Object[] { paramSocket });
      return;
    }
    catch (IllegalAccessException paramSocket)
    {
      throw new RuntimeException(paramSocket);
    }
    catch (InvocationTargetException paramSocket)
    {
      throw new RuntimeException(paramSocket.getCause());
    }
  }
  
  public final void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    try
    {
      paramSocket.connect(paramInetSocketAddress, paramInt);
      return;
    }
    catch (SecurityException paramSocket)
    {
      paramInetSocketAddress = new IOException("Exception in connect");
      paramInetSocketAddress.initCause(paramSocket);
      throw paramInetSocketAddress;
    }
  }
  
  public final void a(SSLSocket paramSSLSocket, String paramString, List<blz> paramList)
  {
    if (paramString != null)
    {
      a.a(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
      b.a(paramSSLSocket, new Object[] { paramString });
    }
    if ((f != null) && (f.a(paramSSLSocket)))
    {
      paramString = new bzu();
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        blz localblz = (blz)paramList.get(i);
        if (localblz != blz.a)
        {
          paramString.a(localblz.toString().length());
          paramString.a(localblz.toString());
        }
        i += 1;
      }
      paramString = paramString.o();
      f.b(paramSSLSocket, new Object[] { paramString });
    }
  }
  
  public final String b(SSLSocket paramSSLSocket)
  {
    if (e == null) {
      return null;
    }
    if (!e.a(paramSSLSocket)) {
      return null;
    }
    paramSSLSocket = (byte[])e.b(paramSSLSocket, new Object[0]);
    if (paramSSLSocket != null) {
      return new String(paramSSLSocket, bmp.c);
    }
    return null;
  }
  
  public final void b(Socket paramSocket)
  {
    if (d == null) {
      return;
    }
    try
    {
      d.invoke(null, new Object[] { paramSocket });
      return;
    }
    catch (IllegalAccessException paramSocket)
    {
      throw new RuntimeException(paramSocket);
    }
    catch (InvocationTargetException paramSocket)
    {
      throw new RuntimeException(paramSocket.getCause());
    }
  }
}

/* Location:
 * Qualified Name:     bmn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */