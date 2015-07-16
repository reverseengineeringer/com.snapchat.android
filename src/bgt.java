import com.google.gson.reflect.TypeToken;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class bgt
{
  public static final String DEFAULT_BASE_URL = "https://feelinsonice-hrd.appspot.com";
  private static final bgt INSTANCE = new bgt();
  private final Set<String> mDefaultEndpointRoutingSet;
  public String mSerializedUrlRoutingMap;
  public final Map<String, String> mUrlRoutingMap;
  public final ReadWriteLock mUrlRoutingRWLock = new ReentrantReadWriteLock(true);
  private final akr mUserPrefs;
  
  private bgt()
  {
    this(akr.a());
  }
  
  private bgt(akr paramakr)
  {
    mUserPrefs = paramakr;
    mSerializedUrlRoutingMap = akr.bh();
    mUrlRoutingMap = b(mSerializedUrlRoutingMap);
    mDefaultEndpointRoutingSet = new HashSet();
    mDefaultEndpointRoutingSet.add("/bq/ip_routing");
    mDefaultEndpointRoutingSet.add("/bq/ip_routing_error");
  }
  
  public static bgt a()
  {
    return INSTANCE;
  }
  
  public static void b()
  {
    new qm().execute();
  }
  
  public final String a(@chd String paramString)
  {
    try
    {
      URL localURL = new URL(paramString);
      String str = String.format("%s://%s", new Object[] { localURL.getProtocol(), localURL.getHost() });
      if (mDefaultEndpointRoutingSet.contains(localURL.getPath())) {
        return paramString.replace(str, bal.b(localURL.getPath()));
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
    (Map)auw.a(paramString, new TypeToken() {}.getType());
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
 * Qualified Name:     bgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */