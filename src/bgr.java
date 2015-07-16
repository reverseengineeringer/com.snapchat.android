import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class bgr
{
  public static final String DEFAULT_BASE_HOST = "feelinsonice-hrd.appspot.com";
  public static final String DEFAULT_BASE_URL = "https://feelinsonice-hrd.appspot.com";
  protected static final String DEFAULT_DIRECTORY_URL = "https://list.suproo.com";
  private static ajn DEFAULT_ENDPOINT_SET;
  protected static ajz DEFAULT_PROXY_ENDPOINT;
  private static final boolean ENABLED = false;
  public static final String PINNED_ENDPOINT = "https://app.snapchat.com";
  public static final String SNAPCHAT_SQUARE_SANDBOX_URL = "https://cash-dot-feelinsonice-hrd.appspot.com";
  private static final String SQUARE_BASE_URL = "https://cash.square.com";
  private static final String SQUARE_SANDBOX_URL = "https://cash.square-sandbox.com";
  private static final String SQUARE_URL = "https://sc-connect.squareup.com";
  private static final boolean USING_CACHES = true;
  private static final List<String> VALID_URL_ENDINGS = Arrays.asList(new String[] { "snapchat.com", "suproo.com", "feelinsonice-hrd.appspot.com", "addlive.io" });
  private static bgr sInstance;
  private ajn mEndpointSet;
  private Map<ajz, Long> mLastPingResults;
  private long mLastRefreshTime;
  private long mPingStartTime;
  public ajz mProxyEndpoint;
  private Map<ajz, Long> mProxyEndpointsToPingTimes = new HashMap();
  private int mRequestsFinished;
  private List<ajn> mTempEndpointSets = new ArrayList();
  
  private bgr()
  {
    Object localObject2 = new ArrayList(Arrays.asList(new String[] { "https://cnc.addlive.io" }));
    Object localObject1 = new ArrayList(Arrays.asList(new String[] { "https://test.suproo.com/proxy/cnc" }));
    localObject2 = new ajz("https://feelinsonice-hrd.appspot.com", "https://feelinsonice-hrd.appspot.com", (List)localObject2, 0);
    DEFAULT_ENDPOINT_SET = new ajn(new ArrayList(Arrays.asList(new ajz[] { localObject2, new ajz("https://test.suproo.com", "https://test.suproo.com", (List)localObject1, 1) })), new ArrayList(Arrays.asList(new String[] { "https://list.suproo.com" })));
    DEFAULT_PROXY_ENDPOINT = (ajz)localObject2;
    localObject1 = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getString(SharedPreferenceKey.ENDPOINT_SET.getKey(), null);
    if (localObject1 != null)
    {
      localObject1 = (ajn)aul.a().fromJson((String)localObject1, ajn.class);
      mEndpointSet = ((ajn)localObject1);
      if (mEndpointSet == null) {
        mEndpointSet = DEFAULT_ENDPOINT_SET;
      }
      localObject1 = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getString(SharedPreferenceKey.PROXY_ENDPOINT.getKey(), null);
      if (localObject1 == null) {
        break label289;
      }
    }
    label289:
    for (localObject1 = (ajz)aul.a().fromJson((String)localObject1, ajz.class);; localObject1 = null)
    {
      mProxyEndpoint = ((ajz)localObject1);
      if (mProxyEndpoint == null) {
        mProxyEndpoint = DEFAULT_PROXY_ENDPOINT;
      }
      mLastPingResults = g();
      if (mLastPingResults == null) {
        mLastPingResults = new HashMap();
      }
      return;
      localObject1 = null;
      break;
    }
  }
  
  public static bgr a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new bgr();
      }
      bgr localbgr = sInstance;
      return localbgr;
    }
    finally {}
  }
  
  public static boolean d()
  {
    return false;
  }
  
  public static String e()
  {
    if (bal.c()) {
      return "https://cash.square-sandbox.com";
    }
    return "https://sc-connect.squareup.com";
  }
  
  public static String f()
  {
    if (bal.c()) {
      return "https://cash.square-sandbox.com";
    }
    return "https://cash.square.com";
  }
  
  private Map<ajz, Long> g()
  {
    Object localObject1 = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getString(SharedPreferenceKey.LAST_PING_RESULTS.getKey(), null);
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = new TypeToken() {}.getType();
    localObject2 = (Map)aul.a().fromJson((String)localObject1, (Type)localObject2);
    localObject1 = new HashMap();
    localObject2 = ((Map)localObject2).entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      ((Map)localObject1).put((ajz)aul.a().fromJson((String)localEntry.getKey(), ajz.class), localEntry.getValue());
    }
    return (Map<ajz, Long>)localObject1;
  }
  
  public final void b() {}
  
  public final List<String> c()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = mProxyEndpoint.mAddliveBaseUrls.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(str + "/resolve_streamer.do");
    }
    return localArrayList;
  }
  
  public final class a {}
}

/* Location:
 * Qualified Name:     bgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */