import com.snapchat.android.analytics.framework.ErrorMetric;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public final class ayq
{
  private static final String PROTOCOL = "TLS";
  private static ayq sInstance;
  @chd
  public final SSLContext mSslContext;
  
  private ayq()
  {
    for (;;)
    {
      try
      {
        SSLContext localSSLContext = SSLContext.getInstance("TLS");
        ayr localayr;
        SecureRandom localSecureRandom;
        new ErrorMetric("Failed to initialize the client-side SSLContext").a(localException1).e();
      }
      catch (Exception localException1)
      {
        try
        {
          localayr = new ayr((byte)0);
          localSecureRandom = new SecureRandom();
          localSSLContext.init(null, new TrustManager[] { localayr }, localSecureRandom);
          mSslContext = localSSLContext;
          return;
        }
        catch (Exception localException2)
        {
          for (;;) {}
        }
        localException1 = localException1;
        localSSLContext = null;
      }
    }
  }
  
  public static ayq a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new ayq();
      }
      ayq localayq = sInstance;
      return localayq;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     ayq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */