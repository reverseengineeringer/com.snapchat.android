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

public final class bfr
{
  public static final String DEFAULT_BASE_HOST = "feelinsonice-hrd.appspot.com";
  public static final String DEFAULT_BASE_URL = "https://feelinsonice-hrd.appspot.com";
  protected static final String DEFAULT_DIRECTORY_URL = "https://list.suproo.com";
  private static air DEFAULT_ENDPOINT_SET;
  protected static ajd DEFAULT_PROXY_ENDPOINT;
  private static final boolean ENABLED = false;
  public static final String PINNED_ENDPOINT = "https://app.snapchat.com";
  public static final String SNAPCHAT_SQUARE_SANDBOX_URL = "https://cash-dot-feelinsonice-hrd.appspot.com";
  private static final String SQUARE_BASE_URL = "https://cash.square.com";
  private static final String SQUARE_SANDBOX_URL = "https://cash.square-sandbox.com";
  private static final String SQUARE_URL = "https://sc-connect.squareup.com";
  private static final boolean USING_CACHES = true;
  private static final List<String> VALID_URL_ENDINGS = Arrays.asList(new String[] { "snapchat.com", "suproo.com", "feelinsonice-hrd.appspot.com", "addlive.io" });
  private static bfr sInstance;
  private air mEndpointSet;
  private Map<ajd, Long> mLastPingResults;
  private long mLastRefreshTime;
  private long mPingStartTime;
  public ajd mProxyEndpoint;
  private Map<ajd, Long> mProxyEndpointsToPingTimes = new HashMap();
  private int mRequestsFinished;
  private List<air> mTempEndpointSets = new ArrayList();
  
  private bfr()
  {
    Object localObject2 = new ArrayList(Arrays.asList(new String[] { "https://cnc.addlive.io" }));
    Object localObject1 = new ArrayList(Arrays.asList(new String[] { "https://test.suproo.com/proxy/cnc" }));
    localObject2 = new ajd("https://feelinsonice-hrd.appspot.com", "https://feelinsonice-hrd.appspot.com", (List)localObject2, 0);
    DEFAULT_ENDPOINT_SET = new air(new ArrayList(Arrays.asList(new ajd[] { localObject2, new ajd("https://test.suproo.com", "https://test.suproo.com", (List)localObject1, 1) })), new ArrayList(Arrays.asList(new String[] { "https://list.suproo.com" })));
    DEFAULT_PROXY_ENDPOINT = (ajd)localObject2;
    localObject1 = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getString(SharedPreferenceKey.ENDPOINT_SET.getKey(), null);
    if (localObject1 != null)
    {
      localObject1 = (air)atn.a().fromJson((String)localObject1, air.class);
      mEndpointSet = ((air)localObject1);
      if (mEndpointSet == null) {
        mEndpointSet = DEFAULT_ENDPOINT_SET;
      }
      localObject1 = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getString(SharedPreferenceKey.PROXY_ENDPOINT.getKey(), null);
      if (localObject1 == null) {
        break label289;
      }
    }
    label289:
    for (localObject1 = (ajd)atn.a().fromJson((String)localObject1, ajd.class);; localObject1 = null)
    {
      mProxyEndpoint = ((ajd)localObject1);
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
  
  public static bfr a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new bfr();
      }
      bfr localbfr = sInstance;
      return localbfr;
    }
    finally {}
  }
  
  public static boolean d()
  {
    return false;
  }
  
  public static String e()
  {
    if (azm.c()) {
      return "https://cash.square-sandbox.com";
    }
    return "https://sc-connect.squareup.com";
  }
  
  public static String f()
  {
    if (azm.c()) {
      return "https://cash.square-sandbox.com";
    }
    return "https://cash.square.com";
  }
  
  private Map<ajd, Long> g()
  {
    Object localObject1 = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getString(SharedPreferenceKey.LAST_PING_RESULTS.getKey(), null);
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = new TypeToken() {}.getType();
    localObject2 = (Map)atn.a().fromJson((String)localObject1, (Type)localObject2);
    localObject1 = new HashMap();
    localObject2 = ((Map)localObject2).entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      ((Map)localObject1).put((ajd)atn.a().fromJson((String)localEntry.getKey(), ajd.class), localEntry.getValue());
    }
    return (Map<ajd, Long>)localObject1;
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
 * Qualified Name:     bfr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */