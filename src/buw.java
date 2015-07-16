import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

public final class buw
  extends buu
{
  private static final String[] f = { "libcore.net.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.http.HttpURLConnection" };
  
  public buw(bum parambum, btx parambtx)
  {
    super(parambum, parambtx, f);
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
      buz localbuz = new buz(paramURL, c, d);
      return localbuz;
    }
    catch (ThreadDeath paramURL)
    {
      throw paramURL;
    }
    catch (Throwable localThrowable)
    {
      bue.a(localThrowable);
    }
    return paramURL;
  }
  
  protected final URLConnection openConnection(URL paramURL, Proxy paramProxy)
  {
    paramURL = (HttpURLConnection)super.openConnection(paramURL, paramProxy);
    try
    {
      paramProxy = new buz(paramURL, c, d);
      return paramProxy;
    }
    catch (ThreadDeath paramURL)
    {
      throw paramURL;
    }
    catch (Throwable paramProxy)
    {
      bue.a(paramProxy);
    }
    return paramURL;
  }
}

/* Location:
 * Qualified Name:     buw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */