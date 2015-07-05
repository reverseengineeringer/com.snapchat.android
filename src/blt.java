import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class blt
{
  final String a;
  final List<Certificate> b;
  final List<Certificate> c;
  
  blt(String paramString, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    a = paramString;
    b = paramList1;
    c = paramList2;
  }
  
  public static blt a(SSLSession paramSSLSession)
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
        localObject = bmp.a((Object[])localObject);
        paramSSLSession = paramSSLSession.getLocalCertificates();
        if (paramSSLSession == null) {
          break label77;
        }
        paramSSLSession = bmp.a(paramSSLSession);
        return new blt(str, (List)localObject, paramSSLSession);
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
    if (!(paramObject instanceof blt)) {}
    do
    {
      return false;
      paramObject = (blt)paramObject;
    } while ((!a.equals(a)) || (!b.equals(b)) || (!c.equals(c)));
    return true;
  }
  
  public final int hashCode()
  {
    return ((a.hashCode() + 527) * 31 + b.hashCode()) * 31 + c.hashCode();
  }
}

/* Location:
 * Qualified Name:     blt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */