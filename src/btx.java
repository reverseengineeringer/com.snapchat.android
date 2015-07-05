import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

public final class btx
  extends btt
{
  private static final String[] f = { "libcore.net.http.HttpsURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnectionImpl", "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnection" };
  
  public btx(btl parambtl, bsw parambsw)
  {
    super(parambtl, parambsw, f);
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
      btz localbtz = new btz(paramURL, c, d);
      return localbtz;
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
    paramURL = (HttpsURLConnection)super.openConnection(paramURL, paramProxy);
    try
    {
      paramProxy = new btz(paramURL, c, d);
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
 * Qualified Name:     btx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */