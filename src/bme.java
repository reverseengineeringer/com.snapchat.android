import java.net.InetSocketAddress;
import java.net.Proxy;

public final class bme
{
  public final blg a;
  public final Proxy b;
  final InetSocketAddress c;
  final blq d;
  final boolean e;
  
  public bme(blg paramblg, Proxy paramProxy, InetSocketAddress paramInetSocketAddress, blq paramblq, boolean paramBoolean)
  {
    if (paramblg == null) {
      throw new NullPointerException("address == null");
    }
    if (paramProxy == null) {
      throw new NullPointerException("proxy == null");
    }
    if (paramInetSocketAddress == null) {
      throw new NullPointerException("inetSocketAddress == null");
    }
    if (paramblq == null) {
      throw new NullPointerException("connectionConfiguration == null");
    }
    a = paramblg;
    b = paramProxy;
    c = paramInetSocketAddress;
    d = paramblq;
    e = paramBoolean;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof bme))
    {
      paramObject = (bme)paramObject;
      bool1 = bool2;
      if (a.equals(a))
      {
        bool1 = bool2;
        if (b.equals(b))
        {
          bool1 = bool2;
          if (c.equals(c))
          {
            bool1 = bool2;
            if (d.equals(d))
            {
              bool1 = bool2;
              if (e == e) {
                bool1 = true;
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
    int j = a.hashCode();
    int k = b.hashCode();
    int m = c.hashCode();
    int n = d.hashCode();
    if (e) {}
    for (int i = 1;; i = 0) {
      return i + ((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31;
    }
  }
}

/* Location:
 * Qualified Name:     bme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */