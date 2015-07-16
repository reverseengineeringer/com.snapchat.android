import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import java.util.HashMap;
import java.util.Map;

public final class alt
{
  private static final alt b = new alt();
  public final ama a;
  private final Object c = new Object();
  private final Map<String, amf> d = new HashMap();
  
  private alt()
  {
    this(ama.a());
  }
  
  private alt(ama paramama)
  {
    a = paramama;
  }
  
  public static alt a()
  {
    return b;
  }
  
  @chc
  public final amf a(String paramString)
  {
    synchronized (c)
    {
      amf localamf2 = (amf)d.get(paramString);
      amf localamf1 = localamf2;
      if (localamf2 == null)
      {
        localamf1 = new amf();
        d.put(paramString, localamf1);
      }
      return localamf1;
    }
  }
  
  @chc
  public final String b()
  {
    int i = 1;
    Object localObject = a.c();
    if ((localObject != null) && (((WifiInfo)localObject).getSSID() != null) && (((WifiInfo)localObject).getBSSID() != null)) {
      return String.format("WIFI-%s-%s", new Object[] { ((WifiInfo)localObject).getSSID(), ((WifiInfo)localObject).getBSSID() });
    }
    localObject = a.b();
    if ((localObject != null) && (((NetworkInfo)localObject).isConnected()) && (((NetworkInfo)localObject).getType() == 0)) {}
    while (i != 0)
    {
      return "WAN";
      i = 0;
    }
    return "NO_NETWORK";
  }
}

/* Location:
 * Qualified Name:     alt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */