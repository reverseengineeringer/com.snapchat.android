import com.snapchat.android.analytics.framework.ErrorMetric;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public final class axs
{
  private static final String PROTOCOL = "TLS";
  private static axs sInstance;
  @cgc
  public final SSLContext mSslContext;
  
  private axs()
  {
    for (;;)
    {
      try
      {
        SSLContext localSSLContext = SSLContext.getInstance("TLS");
        axt localaxt;
        SecureRandom localSecureRandom;
        new ErrorMetric("Failed to initialize the client-side SSLContext").a(localException1).d();
      }
      catch (Exception localException1)
      {
        try
        {
          localaxt = new axt((byte)0);
          localSecureRandom = new SecureRandom();
          localSSLContext.init(null, new TrustManager[] { localaxt }, localSecureRandom);
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
  
  public static axs a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new axs();
      }
      axs localaxs = sInstance;
      return localaxs;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     axs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */