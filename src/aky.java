import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import java.util.HashMap;
import java.util.Map;

public final class aky
{
  private static final aky b = new aky();
  public final ale a;
  private final Object c = new Object();
  private final Map<String, alj> d = new HashMap();
  
  private aky()
  {
    this(ale.a());
  }
  
  private aky(ale paramale)
  {
    a = paramale;
  }
  
  public static aky a()
  {
    return b;
  }
  
  @cgb
  public final alj a(String paramString)
  {
    synchronized (c)
    {
      alj localalj2 = (alj)d.get(paramString);
      alj localalj1 = localalj2;
      if (localalj2 == null)
      {
        localalj1 = new alj();
        d.put(paramString, localalj1);
      }
      return localalj1;
    }
  }
  
  @cgb
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
 * Qualified Name:     aky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */