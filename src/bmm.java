import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class bmm
{
  public static final bmm a = new bmm(new bmm.a(), (byte)0);
  private final Map<String, List<cay>> b;
  
  private bmm(bmm.a parama)
  {
    b = bnq.a(a);
  }
  
  private static cay a(X509Certificate paramX509Certificate)
  {
    return bnq.a(cay.a(paramX509Certificate.getPublicKey().getEncoded()));
  }
  
  public static String a(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }
    return "sha1/" + cau.a(ac);
  }
  
  public final void a(String paramString, List<Certificate> paramList)
  {
    int j = 0;
    List localList = (List)b.get(paramString);
    if (localList == null) {
      return;
    }
    int k = paramList.size();
    int i = 0;
    for (;;)
    {
      if (i >= k) {
        break label70;
      }
      if (localList.contains(a((X509Certificate)paramList.get(i)))) {
        break;
      }
      i += 1;
    }
    label70:
    StringBuilder localStringBuilder = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
    k = paramList.size();
    i = 0;
    while (i < k)
    {
      X509Certificate localX509Certificate = (X509Certificate)paramList.get(i);
      localStringBuilder.append("\n    ").append(a(localX509Certificate)).append(": ").append(localX509Certificate.getSubjectDN().getName());
      i += 1;
    }
    localStringBuilder.append("\n  Pinned certificates for ").append(paramString).append(":");
    k = localList.size();
    i = j;
    while (i < k)
    {
      paramString = (cay)localList.get(i);
      localStringBuilder.append("\n    sha1/").append(cau.a(c));
      i += 1;
    }
    throw new SSLPeerUnverifiedException(localStringBuilder.toString());
  }
  
  public static final class a
  {
    final Map<String, List<cay>> a = new LinkedHashMap();
  }
}

/* Location:
 * Qualified Name:     bmm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */