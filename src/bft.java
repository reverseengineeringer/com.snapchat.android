import com.google.gson.reflect.TypeToken;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class bft
{
  public static final String DEFAULT_BASE_URL = "https://feelinsonice-hrd.appspot.com";
  private static final bft INSTANCE = new bft();
  private final Set<String> mDefaultEndpointRoutingSet;
  public String mSerializedUrlRoutingMap;
  public final Map<String, String> mUrlRoutingMap;
  public final ReadWriteLock mUrlRoutingRWLock = new ReentrantReadWriteLock(true);
  private final ajx mUserPrefs;
  
  private bft()
  {
    this(ajx.a());
  }
  
  private bft(ajx paramajx)
  {
    mUserPrefs = paramajx;
    mSerializedUrlRoutingMap = ajx.bk();
    mUrlRoutingMap = b(mSerializedUrlRoutingMap);
    mDefaultEndpointRoutingSet = new HashSet();
    mDefaultEndpointRoutingSet.add("/bq/ip_routing");
    mDefaultEndpointRoutingSet.add("/bq/ip_routing_error");
  }
  
  public static bft a()
  {
    return INSTANCE;
  }
  
  public static void b()
  {
    new pv().f();
  }
  
  public final String a(@cgc String paramString)
  {
    try
    {
      URL localURL = new URL(paramString);
      String str = String.format("%s://%s", new Object[] { localURL.getProtocol(), localURL.getHost() });
      if (mDefaultEndpointRoutingSet.contains(localURL.getPath())) {
        return paramString.replace(str, azm.b(localURL.getPath()));
      }
      mUrlRoutingRWLock.readLock().lock();
      try
      {
        if (mUrlRoutingMap.containsKey(str))
        {
          paramString = paramString.replace(str, (String)mUrlRoutingMap.get(str));
          return paramString;
        }
        return paramString;
      }
      finally
      {
        mUrlRoutingRWLock.readLock().unlock();
      }
      return paramString;
    }
    catch (MalformedURLException localMalformedURLException) {}
  }
  
  public final Map<String, String> b(String paramString)
  {
    (Map)aty.a(paramString, new TypeToken() {}.getType());
  }
  
  public final String c()
  {
    mUrlRoutingRWLock.readLock().lock();
    try
    {
      String str = mSerializedUrlRoutingMap;
      return str;
    }
    finally
    {
      mUrlRoutingRWLock.readLock().unlock();
    }
  }
}

/* Location:
 * Qualified Name:     bft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */