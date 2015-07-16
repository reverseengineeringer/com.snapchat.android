import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.List;

public final class bnr
  implements bmi
{
  public static final bmi a = new bnr();
  
  private static InetAddress a(Proxy paramProxy, URL paramURL)
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT)) {
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    }
    return InetAddress.getByName(paramURL.getHost());
  }
  
  public final bnb a(Proxy paramProxy, bnd parambnd)
  {
    List localList = parambnd.f();
    parambnd = a;
    URL localURL = parambnd.a();
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (bmn)localList.get(i);
      if ("Basic".equalsIgnoreCase(a))
      {
        localObject = Authenticator.requestPasswordAuthentication(localURL.getHost(), a(paramProxy, localURL), localURL.getPort(), localURL.getProtocol(), b, a, localURL, Authenticator.RequestorType.SERVER);
        if (localObject != null)
        {
          paramProxy = bms.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return parambnd.c().a("Authorization", paramProxy).a();
        }
      }
      i += 1;
    }
    return null;
  }
  
  public final bnb b(Proxy paramProxy, bnd parambnd)
  {
    List localList = parambnd.f();
    parambnd = a;
    URL localURL = parambnd.a();
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (bmn)localList.get(i);
      if ("Basic".equalsIgnoreCase(a))
      {
        InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
        localObject = Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), a(paramProxy, localURL), localInetSocketAddress.getPort(), localURL.getProtocol(), b, a, localURL, Authenticator.RequestorType.PROXY);
        if (localObject != null)
        {
          paramProxy = bms.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return parambnd.c().a("Proxy-Authorization", paramProxy).a();
        }
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bnr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */