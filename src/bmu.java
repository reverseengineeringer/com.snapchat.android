import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class bmu
{
  final String a;
  final List<Certificate> b;
  final List<Certificate> c;
  
  bmu(String paramString, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    a = paramString;
    b = paramList1;
    c = paramList2;
  }
  
  public static bmu a(SSLSession paramSSLSession)
  {
    String str = paramSSLSession.getCipherSuite();
    if (str == null) {
      throw new IllegalStateException("cipherSuite == null");
    }
    try
    {
      Object localObject = paramSSLSession.getPeerCertificates();
      if (localObject != null)
      {
        localObject = bnq.a((Object[])localObject);
        paramSSLSession = paramSSLSession.getLocalCertificates();
        if (paramSSLSession == null) {
          break label77;
        }
        paramSSLSession = bnq.a(paramSSLSession);
        return new bmu(str, (List)localObject, paramSSLSession);
      }
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      for (;;)
      {
        List localList = null;
        continue;
        localList = Collections.emptyList();
        continue;
        label77:
        paramSSLSession = Collections.emptyList();
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bmu)) {}
    do
    {
      return false;
      paramObject = (bmu)paramObject;
    } while ((!a.equals(a)) || (!b.equals(b)) || (!c.equals(c)));
    return true;
  }
  
  public final int hashCode()
  {
    return ((a.hashCode() + 527) * 31 + b.hashCode()) * 31 + c.hashCode();
  }
}

/* Location:
 * Qualified Name:     bmu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */