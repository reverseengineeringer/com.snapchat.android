import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.snapchat.android.SnapchatApplication;
import java.util.HashSet;
import java.util.Set;

public final class ale
{
  private static ale d = new ale();
  public final Object a = new Object();
  public final Set<ald> b = new HashSet();
  public NetworkInfo c;
  private final ConnectivityManager e;
  private final WifiManager f;
  
  private ale()
  {
    this(SnapchatApplication.b());
  }
  
  private ale(Context paramContext) {}
  
  private ale(ConnectivityManager paramConnectivityManager, WifiManager paramWifiManager)
  {
    e = paramConnectivityManager;
    f = paramWifiManager;
  }
  
  public static ale a()
  {
    return d;
  }
  
  public static String a(NetworkInfo paramNetworkInfo)
  {
    if (paramNetworkInfo != null) {
      return paramNetworkInfo.toString();
    }
    return "None";
  }
  
  public final void a(ald paramald)
  {
    synchronized (a)
    {
      b.add(paramald);
      return;
    }
  }
  
  @cgc
  public final NetworkInfo b()
  {
    synchronized (a)
    {
      c = e.getActiveNetworkInfo();
      NetworkInfo localNetworkInfo = c;
      return localNetworkInfo;
    }
  }
  
  public final void b(ald paramald)
  {
    synchronized (a)
    {
      b.remove(paramald);
      return;
    }
  }
  
  @cgc
  public final WifiInfo c()
  {
    Object localObject2 = a;
    WifiInfo localWifiInfo = null;
    try
    {
      if (e()) {
        localWifiInfo = f.getConnectionInfo();
      }
      return localWifiInfo;
    }
    finally {}
  }
  
  public final boolean d()
  {
    NetworkInfo localNetworkInfo = b();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected());
  }
  
  public final boolean e()
  {
    NetworkInfo localNetworkInfo = b();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.getType() == 1);
  }
  
  @cgb
  public final String f()
  {
    NetworkInfo localNetworkInfo = b();
    String str = "unknown";
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting()))
    {
      if (localNetworkInfo.getType() == 1) {
        str = "wifi";
      }
      while (localNetworkInfo.getType() != 0) {
        return str;
      }
      return "wwan";
    }
    return "not_reachable";
  }
}

/* Location:
 * Qualified Name:     ale
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */