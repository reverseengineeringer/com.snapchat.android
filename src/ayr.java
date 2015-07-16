import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class ayr
  implements X509TrustManager
{
  private static final String[] TRUSTED_SUBJECT_ALTERNATIVE_DNS_NAMES = { "feelinsonice.com", "www.feelinsonice.com" };
  private static final Set<String> sTrustedSubjectAlternativeDNSNames = new HashSet(Arrays.asList(TRUSTED_SUBJECT_ALTERNATIVE_DNS_NAMES));
  private X509TrustManager mDefaultTrustManager;
  
  private ayr()
  {
    try
    {
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
      localTrustManagerFactory.init(null);
      mDefaultTrustManager = a(localTrustManagerFactory);
      if (mDefaultTrustManager == null) {
        throw new IllegalStateException("Couldn't find X509TrustManager");
      }
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new RuntimeException(localGeneralSecurityException);
    }
  }
  
  public ayr(byte paramByte)
  {
    this();
  }
  
  private static X509TrustManager a(TrustManagerFactory paramTrustManagerFactory)
  {
    paramTrustManagerFactory = paramTrustManagerFactory.getTrustManagers();
    int j = paramTrustManagerFactory.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramTrustManagerFactory[i];
      if ((localObject instanceof X509TrustManager)) {
        return (X509TrustManager)localObject;
      }
      i += 1;
    }
    return null;
  }
  
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    throw new CertificateException("Client certificate checking is unsupported.");
  }
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    mDefaultTrustManager.checkServerTrusted(paramArrayOfX509Certificate, paramString);
    paramArrayOfX509Certificate = paramArrayOfX509Certificate[0].getSubjectAlternativeNames();
    if (paramArrayOfX509Certificate != null)
    {
      paramArrayOfX509Certificate = paramArrayOfX509Certificate.iterator();
      do
      {
        do
        {
          if (!paramArrayOfX509Certificate.hasNext()) {
            break;
          }
          paramString = (List)paramArrayOfX509Certificate.next();
        } while (((Integer)paramString.get(0)).intValue() != 2);
        paramString = (String)paramString.get(1);
      } while (!sTrustedSubjectAlternativeDNSNames.contains(paramString));
    }
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        throw new CertificateException("Certificate did not match an expected DNS name.");
      }
      return;
    }
  }
  
  public final X509Certificate[] getAcceptedIssuers()
  {
    return mDefaultTrustManager.getAcceptedIssuers();
  }
}

/* Location:
 * Qualified Name:     ayr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */