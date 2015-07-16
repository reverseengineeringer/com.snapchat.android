import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

final class bno$b
  extends bno
{
  private final Method a;
  private final Method b;
  private final Method c;
  private final Class<?> d;
  private final Class<?> e;
  
  public bno$b(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
  {
    a = paramMethod1;
    b = paramMethod2;
    c = paramMethod3;
    d = paramClass1;
    e = paramClass2;
  }
  
  public final void a(SSLSocket paramSSLSocket)
  {
    try
    {
      c.invoke(null, new Object[] { paramSSLSocket });
      return;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError();
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  public final void a(SSLSocket paramSSLSocket, String paramString, List<bna> paramList)
  {
    paramString = new ArrayList(paramList.size());
    int j = paramList.size();
    int i = 0;
    Object localObject;
    while (i < j)
    {
      localObject = (bna)paramList.get(i);
      if (localObject != bna.a) {
        paramString.add(((bna)localObject).toString());
      }
      i += 1;
    }
    try
    {
      paramList = bno.class.getClassLoader();
      localObject = d;
      Class localClass = e;
      paramString = new bno.c(paramString);
      paramString = Proxy.newProxyInstance(paramList, new Class[] { localObject, localClass }, paramString);
      a.invoke(null, new Object[] { paramSSLSocket, paramString });
      return;
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      for (;;) {}
    }
  }
  
  public final String b(SSLSocket paramSSLSocket)
  {
    try
    {
      paramSSLSocket = (bno.c)Proxy.getInvocationHandler(b.invoke(null, new Object[] { paramSSLSocket }));
      if ((!bno.c.a(paramSSLSocket)) && (bno.c.b(paramSSLSocket) == null))
      {
        bnj.a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
        return null;
      }
      if (bno.c.a(paramSSLSocket)) {
        return null;
      }
      paramSSLSocket = bno.c.b(paramSSLSocket);
      return paramSSLSocket;
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new AssertionError();
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     bno.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */