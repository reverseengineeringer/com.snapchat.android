import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

final class bmn$b
  extends bmn
{
  private final Method a;
  private final Method b;
  private final Method c;
  private final Class<?> d;
  private final Class<?> e;
  
  public bmn$b(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
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
  
  public final void a(SSLSocket paramSSLSocket, String paramString, List<blz> paramList)
  {
    paramString = new ArrayList(paramList.size());
    int j = paramList.size();
    int i = 0;
    Object localObject;
    while (i < j)
    {
      localObject = (blz)paramList.get(i);
      if (localObject != blz.a) {
        paramString.add(((blz)localObject).toString());
      }
      i += 1;
    }
    try
    {
      paramList = bmn.class.getClassLoader();
      localObject = d;
      Class localClass = e;
      paramString = new bmn.c(paramString);
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
      paramSSLSocket = (bmn.c)Proxy.getInvocationHandler(b.invoke(null, new Object[] { paramSSLSocket }));
      if ((!bmn.c.a(paramSSLSocket)) && (bmn.c.b(paramSSLSocket) == null))
      {
        bmi.a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
        return null;
      }
      if (bmn.c.a(paramSSLSocket)) {
        return null;
      }
      paramSSLSocket = bmn.c.b(paramSSLSocket);
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
 * Qualified Name:     bmn.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */