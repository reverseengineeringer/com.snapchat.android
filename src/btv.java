import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

public final class btv
  extends btt
{
  private static final String[] f = { "libcore.net.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnection" };
  
  public btv(btl parambtl, bsw parambsw)
  {
    super(parambtl, parambsw, f);
  }
  
  protected final String a()
  {
    return "http";
  }
  
  protected final int getDefaultPort()
  {
    return 80;
  }
  
  protected final URLConnection openConnection(URL paramURL)
  {
    paramURL = (HttpURLConnection)super.openConnection(paramURL);
    try
    {
      bty localbty = new bty(paramURL, c, d);
      return localbty;
    }
    catch (ThreadDeath paramURL)
    {
      throw paramURL;
    }
    catch (Throwable localThrowable)
    {
      btd.a(localThrowable);
    }
    return paramURL;
  }
  
  protected final URLConnection openConnection(URL paramURL, Proxy paramProxy)
  {
    paramURL = (HttpURLConnection)super.openConnection(paramURL, paramProxy);
    try
    {
      paramProxy = new bty(paramURL, c, d);
      return paramProxy;
    }
    catch (ThreadDeath paramURL)
    {
      throw paramURL;
    }
    catch (Throwable paramProxy)
    {
      btd.a(paramProxy);
    }
    return paramURL;
  }
}

/* Location:
 * Qualified Name:     btv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */