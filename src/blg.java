import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class blg
{
  public final Proxy a;
  public final String b;
  public final int c;
  final SocketFactory d;
  final SSLSocketFactory e;
  final HostnameVerifier f;
  final bll g;
  final blh h;
  final List<blz> i;
  public final List<blq> j;
  public final ProxySelector k;
  
  public blg(String paramString, int paramInt, SocketFactory paramSocketFactory, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, bll parambll, blh paramblh, Proxy paramProxy, List<blz> paramList, List<blq> paramList1, ProxySelector paramProxySelector)
  {
    if (paramString == null) {
      throw new NullPointerException("uriHost == null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("uriPort <= 0: " + paramInt);
    }
    if (paramblh == null) {
      throw new IllegalArgumentException("authenticator == null");
    }
    if (paramList == null) {
      throw new IllegalArgumentException("protocols == null");
    }
    if (paramProxySelector == null) {
      throw new IllegalArgumentException("proxySelector == null");
    }
    a = paramProxy;
    b = paramString;
    c = paramInt;
    d = paramSocketFactory;
    e = paramSSLSocketFactory;
    f = paramHostnameVerifier;
    g = parambll;
    h = paramblh;
    i = bmp.a(paramList);
    j = bmp.a(paramList1);
    k = paramProxySelector;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof blg))
    {
      paramObject = (blg)paramObject;
      bool1 = bool2;
      if (bmp.a(a, a))
      {
        bool1 = bool2;
        if (b.equals(b))
        {
          bool1 = bool2;
          if (c == c)
          {
            bool1 = bool2;
            if (bmp.a(e, e))
            {
              bool1 = bool2;
              if (bmp.a(f, f))
              {
                bool1 = bool2;
                if (bmp.a(g, g))
                {
                  bool1 = bool2;
                  if (bmp.a(h, h))
                  {
                    bool1 = bool2;
                    if (bmp.a(i, i))
                    {
                      bool1 = bool2;
                      if (bmp.a(j, j))
                      {
                        bool1 = bool2;
                        if (bmp.a(k, k)) {
                          bool1 = true;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    int i2 = 0;
    int m;
    int i3;
    int i4;
    int n;
    if (a != null)
    {
      m = a.hashCode();
      i3 = b.hashCode();
      i4 = c;
      if (e == null) {
        break label166;
      }
      n = e.hashCode();
      label48:
      if (f == null) {
        break label171;
      }
    }
    label166:
    label171:
    for (int i1 = f.hashCode();; i1 = 0)
    {
      if (g != null) {
        i2 = g.hashCode();
      }
      return (((((i1 + (n + (((m + 527) * 31 + i3) * 31 + i4) * 31) * 31) * 31 + i2) * 31 + h.hashCode()) * 31 + i.hashCode()) * 31 + j.hashCode()) * 31 + k.hashCode();
      m = 0;
      break;
      n = 0;
      break label48;
    }
  }
}

/* Location:
 * Qualified Name:     blg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */