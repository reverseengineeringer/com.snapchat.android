import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.List;

public final class bmq
  implements blh
{
  public static final blh a = new bmq();
  
  private static InetAddress a(Proxy paramProxy, URL paramURL)
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT)) {
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    }
    return InetAddress.getByName(paramURL.getHost());
  }
  
  public final bma a(Proxy paramProxy, bmc parambmc)
  {
    List localList = parambmc.f();
    parambmc = a;
    URL localURL = parambmc.a();
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (blm)localList.get(i);
      if ("Basic".equalsIgnoreCase(a))
      {
        localObject = Authenticator.requestPasswordAuthentication(localURL.getHost(), a(paramProxy, localURL), localURL.getPort(), localURL.getProtocol(), b, a, localURL, Authenticator.RequestorType.SERVER);
        if (localObject != null)
        {
          paramProxy = blr.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return parambmc.c().a("Authorization", paramProxy).a();
        }
      }
      i += 1;
    }
    return null;
  }
  
  public final bma b(Proxy paramProxy, bmc parambmc)
  {
    List localList = parambmc.f();
    parambmc = a;
    URL localURL = parambmc.a();
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (blm)localList.get(i);
      if ("Basic".equalsIgnoreCase(a))
      {
        InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
        localObject = Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), a(paramProxy, localURL), localInetSocketAddress.getPort(), localURL.getProtocol(), b, a, localURL, Authenticator.RequestorType.PROXY);
        if (localObject != null)
        {
          paramProxy = blr.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return parambmc.c().a("Proxy-Authorization", paramProxy).a();
        }
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bmq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */