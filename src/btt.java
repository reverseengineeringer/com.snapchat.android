import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

public abstract class btt
  extends URLStreamHandler
{
  public static final String[] a = { "java.net.URL", "int", "java.net.Proxy" };
  public static final String[] b = { "java.net.URL", "int" };
  btl c;
  bsw d;
  boolean e;
  private Constructor f = null;
  private Constructor g = null;
  
  public btt(btl parambtl, bsw parambsw, String[] paramArrayOfString)
  {
    this(parambtl, parambsw, paramArrayOfString, a, b);
  }
  
  private btt(btl parambtl, bsw parambsw, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    c = parambtl;
    d = parambsw;
    e = true;
    int i = 0;
    for (;;)
    {
      if (i < paramArrayOfString1.length) {}
      try
      {
        f = bts.a(paramArrayOfString1[i], paramArrayOfString3);
        g = bts.a(paramArrayOfString1[i], paramArrayOfString2);
        f.setAccessible(true);
        g.setAccessible(true);
        if ((f != null) && (g != null)) {
          break;
        }
        throw new ClassNotFoundException("Couldn't find suitable connection implementations");
      }
      catch (ClassNotFoundException parambtl)
      {
        f = null;
        f = null;
        i += 1;
      }
    }
    if (!b()) {
      throw new ClassNotFoundException("Unable to open test connections");
    }
  }
  
  private URLConnection a(URL paramURL, Proxy paramProxy)
  {
    Proxy localProxy = null;
    String str = "Unable to setup network statistics on a " + a() + " connection due to ";
    try
    {
      int i = btg.e;
      if (paramProxy != null) {
        break label124;
      }
      paramProxy = (URLConnection)f.newInstance(new Object[] { paramURL, Integer.valueOf(getDefaultPort()) });
      localProxy = paramProxy;
      paramProxy = null;
    }
    catch (IllegalArgumentException paramProxy)
    {
      for (;;)
      {
        new StringBuilder().append(str).append("bad arguments");
        btd.b();
        paramProxy = new IOException(paramProxy.getMessage());
      }
    }
    catch (InstantiationException paramProxy)
    {
      for (;;)
      {
        new StringBuilder().append(str).append("an instantiation problem");
        btd.b();
        paramProxy = new IOException(paramProxy.getMessage());
      }
    }
    catch (IllegalAccessException paramProxy)
    {
      for (;;)
      {
        new StringBuilder().append(str).append("security restrictions");
        btd.b();
        paramProxy = new IOException(paramProxy.getMessage());
      }
    }
    catch (InvocationTargetException paramProxy)
    {
      for (;;)
      {
        label124:
        new StringBuilder().append(str).append("an invocation problem");
        btd.b();
        paramProxy = new IOException(paramProxy.getMessage());
      }
    }
    if (paramProxy != null) {
      if (e)
      {
        e = false;
        paramProxy = buc.a();
        if (paramProxy == null) {
          break label318;
        }
      }
    }
    label318:
    for (boolean bool = paramProxy.c();; bool = false)
    {
      btd.e();
      if (bool)
      {
        return new URL(paramURL.toExternalForm()).openConnection();
        paramProxy = (URLConnection)g.newInstance(new Object[] { paramURL, Integer.valueOf(getDefaultPort()), paramProxy });
        localProxy = paramProxy;
        paramProxy = null;
        break;
        throw paramProxy;
      }
      return localProxy;
    }
  }
  
  private boolean b()
  {
    e = false;
    try
    {
      openConnection(new URL("http://www.google.com"));
      e = true;
      return true;
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      e = true;
      return false;
    }
    finally
    {
      localObject = finally;
      e = true;
      throw ((Throwable)localObject);
    }
  }
  
  protected abstract String a();
  
  protected abstract int getDefaultPort();
  
  protected URLConnection openConnection(URL paramURL)
  {
    return a(paramURL, null);
  }
  
  protected URLConnection openConnection(URL paramURL, Proxy paramProxy)
  {
    if ((paramURL == null) || (paramProxy == null)) {
      throw new IllegalArgumentException("url == null || proxy == null");
    }
    return a(paramURL, paramProxy);
  }
}

/* Location:
 * Qualified Name:     btt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */