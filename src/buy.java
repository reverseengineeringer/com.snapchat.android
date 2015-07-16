import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

public final class buy
  extends buu
{
  private static final String[] f = { "libcore.net.http.HttpsURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnection" };
  
  public buy(bum parambum, btx parambtx)
  {
    super(parambum, parambtx, f);
  }
  
  protected final String a()
  {
    return "https";
  }
  
  protected final int getDefaultPort()
  {
    return 443;
  }
  
  protected final URLConnection openConnection(URL paramURL)
  {
    paramURL = (HttpsURLConnection)super.openConnection(paramURL);
    try
    {
      bva localbva = new bva(paramURL, c, d);
      return localbva;
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
    paramURL = (HttpsURLConnection)super.openConnection(paramURL, paramProxy);
    try
    {
      paramProxy = new bva(paramURL, c, d);
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
 * Qualified Name:     buy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */