package com.snapchat.android.analytics;

import aug;
import auo;
import bjx;
import bjx.a;
import chc;
import chd;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

public final class NetworkAnalytics
{
  public static final String CLIENT_ID_PARAM = "client_id";
  public static final String CONTENT_READY_EVENT = "CONTENT_READY";
  public static final String CONTEXT_PARAM = "context";
  public static final String FIRST_ITEM_READY_EVENT = "FIRST_ITEM_READY";
  public static final String FROM_NOTIFICATION_PARAM = "from_notification";
  public static final String IS_DOUBLE_POST_PARAM = "is_double_post";
  public static final String IS_FULL_RESPONSE_PARAM = "is_full_response";
  public static final String MEDIA_DURATION_PARAM = "media_duration";
  public static final String MEDIA_SIZE_PARAM = "media_size";
  public static final String PATH_PARAM = "path";
  public static final String PREVIEW_SCREEN_CONTEXT = "preview_screen";
  public static final String PULL_TO_REFRESH_EVENT = "PULL_TO_REFRESH";
  public static final String REACHABILITY_PARAM = "reachability";
  public static final String RECEIVED_BYTES_PARAM = "return_size_bytes";
  public static final String RESPONSE_CHECKSUM_PARAM = "response_checksum";
  public static final String RESPONSE_COMPARE_RESULTS_DICT_PARAM = "response_compare_results_dict";
  public static final String RESPONSE_COMPARE_RESULT_PARAM = "response_compare_result";
  public static final String RETRY_POST_FAILED_STORY_CONTEXT = "retry_post_failed_story";
  public static final String RETRY_SEND_FAILED_SNAP_CONTEXT = "retry_send_failed_snap";
  public static final String SEND_TO_SCREEN_CONTEXT = "send_to_screen";
  public static final String SERVER_INFO_PARAM = "server_info";
  public static final String SERVER_LATENCY_PARAM = "server_latency";
  public static final String SNAP_SENT_DELAY_EVENT = "SNAP_SENT_DELAY";
  public static final String SNAP_SENT_FAILED_EVENT = "SNAP_SENT_FAILED";
  protected static final String SNAP_SENT_SNAP_DUMMY_EVENT = "SNAP_SENT_SNAP_DUMMY";
  protected static final String SNAP_SENT_STORY_DUMMY_EVENT = "SNAP_SENT_STORY_DUMMY";
  public static final String SNAP_SENT_SUCCESS_EVENT = "SNAP_SENT_SUCCESS";
  public static final String STATUS_CODE_PARAM = "status_code";
  public static final String STORY_POST_DELAY_EVENT = "STORY_POST_DELAY";
  public static final String SUCCESS_PARAM = "success";
  public static final String TYPE_PARAM = "type";
  public static final String WITH_MEDIA_PARAM = "with_media";
  private static final NetworkAnalytics sInstance = new NetworkAnalytics();
  public final DictionaryEasyMetric mDictionaryEasyMetric;
  private final EasyMetric.EasyMetricFactory mMetricFactory;
  public final Map<UUID, Map<String, Object>> mRequestTaskResponseMap;
  private final Map<String, Map<String, EasyMetric>> mTimedMetricsMap;
  
  private NetworkAnalytics()
  {
    this(DictionaryEasyMetric.a(), new EasyMetric.EasyMetricFactory());
  }
  
  private NetworkAnalytics(@chc DictionaryEasyMetric paramDictionaryEasyMetric, @chc EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mDictionaryEasyMetric = paramDictionaryEasyMetric;
    mMetricFactory = paramEasyMetricFactory;
    mTimedMetricsMap = new ConcurrentHashMap();
    mRequestTaskResponseMap = new ConcurrentHashMap();
  }
  
  public static NetworkAnalytics a()
  {
    return sInstance;
  }
  
  @chd
  private EasyMetric a(@chc String paramString1, @chc String paramString2)
  {
    synchronized (mTimedMetricsMap)
    {
      paramString1 = (Map)mTimedMetricsMap.get(paramString1);
      if (paramString1 != null)
      {
        paramString1 = (EasyMetric)paramString1.remove(paramString2);
        return paramString1;
      }
      return null;
    }
  }
  
  private void a(@chc String paramString, @chc PageContext paramPageContext, @chd UUID paramUUID)
  {
    a(paramString, paramUUID);
    mDictionaryEasyMetric.a(paramString, "from_notification", Boolean.valueOf(false), false);
    mDictionaryEasyMetric.a(paramString, "context", aug.a(paramPageContext));
    mDictionaryEasyMetric.b(paramString);
  }
  
  private void a(@chc String paramString1, @chc String paramString2, @chc EasyMetric paramEasyMetric)
  {
    synchronized (mTimedMetricsMap)
    {
      Map localMap1 = (Map)mTimedMetricsMap.get(paramString1);
      Object localObject = localMap1;
      if (localMap1 == null) {
        localObject = new HashMap();
      }
      ((Map)localObject).put(paramString2, paramEasyMetric);
      mTimedMetricsMap.put(paramString1, localObject);
      return;
    }
  }
  
  private void a(@chc String paramString, @chd UUID paramUUID)
  {
    if (paramUUID == null) {}
    Object localObject;
    do
    {
      return;
      localObject = (Map)mRequestTaskResponseMap.get(paramUUID);
    } while (localObject == null);
    mDictionaryEasyMetric.a(paramString, "reachability", ((Map)localObject).get("reachability"));
    int i = ((Integer)((Map)localObject).get("status_code")).intValue();
    mDictionaryEasyMetric.a(paramString, "success", Boolean.valueOf(auo.a(i)));
    mDictionaryEasyMetric.a(paramString, "return_size_bytes", ((Map)localObject).get("return_size_bytes"));
    if (((Map)localObject).containsKey("server_info"))
    {
      localObject = (bjx)((Map)localObject).get("server_info");
      if (bjx.a.EQUAL == ((bjx)localObject).e()) {
        break label231;
      }
    }
    label231:
    for (boolean bool = true;; bool = false)
    {
      mDictionaryEasyMetric.a(paramString, "is_full_response", Boolean.valueOf(bool));
      mDictionaryEasyMetric.a(paramString, "server_latency", ((bjx)localObject).a());
      mDictionaryEasyMetric.a(paramString, "response_checksum", ((bjx)localObject).b());
      mDictionaryEasyMetric.a(paramString, "response_compare_result", ((bjx)localObject).d());
      mDictionaryEasyMetric.a(paramString, "response_compare_results_dict", ((bjx)localObject).f());
      mRequestTaskResponseMap.remove(paramUUID);
      return;
    }
  }
  
  public final void a(PageContext paramPageContext)
  {
    a("PULL_TO_REFRESH", "PULL_TO_REFRESH", EasyMetric.EasyMetricFactory.b("PULL_TO_REFRESH").a("context", aug.a(paramPageContext)).b());
  }
  
  public final void a(@chc PageContext paramPageContext, @chd UUID paramUUID)
  {
    a("CONTENT_READY", paramPageContext, paramUUID);
  }
  
  public final void a(@chc String paramString1, @chc String paramString2, int paramInt, long paramLong, @chc String paramString3, @chd bjx parambjx, boolean paramBoolean)
  {
    EasyMetric localEasyMetric = a(paramString1, paramString2);
    if (localEasyMetric != null)
    {
      localEasyMetric.a("status_code", Integer.valueOf(paramInt)).a("return_size_bytes", Long.valueOf(paramLong)).a("reachability", paramString3);
      if (parambjx != null) {
        if (bjx.a.EQUAL == parambjx.e()) {
          break label103;
        }
      }
    }
    label103:
    for (boolean bool = true;; bool = false)
    {
      localEasyMetric.a("server_info", parambjx).a("is_full_response", Boolean.valueOf(bool));
      localEasyMetric.a("is_double_post", Boolean.valueOf(paramBoolean));
      a(paramString1, paramString2, localEasyMetric);
      return;
    }
  }
  
  public final void a(@chc String paramString1, @chc String paramString2, @chc String paramString3)
  {
    a(paramString1, paramString2, EasyMetric.EasyMetricFactory.a(paramString1).a("context", paramString3).a("with_media", Boolean.valueOf(false)).a("media_size", Double.valueOf(0.0D)).b());
  }
  
  public final void a(@chc String paramString1, @chc String paramString2, @chc String paramString3, int paramInt, @chc String paramString4, long paramLong)
  {
    EasyMetric localEasyMetric2 = a(paramString1, paramString2);
    EasyMetric localEasyMetric1 = localEasyMetric2;
    if (localEasyMetric2 == null) {
      localEasyMetric1 = new EasyMetric(paramString1).a("path", paramString3);
    }
    localEasyMetric1.a("reachability", paramString4).a("status_code", Integer.valueOf(paramInt)).a("client_id", paramString2).a(paramLong);
    a(paramString1, paramString2, localEasyMetric1);
  }
  
  public final void a(@chc String paramString1, @chc String paramString2, @chc String paramString3, @chc String paramString4, long paramLong)
  {
    EasyMetric localEasyMetric = a(paramString1, paramString3);
    if (localEasyMetric != null)
    {
      localEasyMetric.a("media_size", Long.valueOf(paramLong)).a("with_media", Boolean.valueOf(true));
      a(paramString1, paramString3, localEasyMetric);
    }
    localEasyMetric = a(paramString2, paramString3);
    paramString1 = localEasyMetric;
    if (localEasyMetric == null) {
      paramString1 = new EasyMetric(paramString2);
    }
    paramString1.a("path", paramString4);
    a(paramString2, paramString3, paramString1);
  }
  
  public final void a(@chc String paramString1, @chc String paramString2, @chc String paramString3, boolean paramBoolean1, double paramDouble, boolean paramBoolean2)
  {
    paramString1 = a(paramString1, paramString3);
    if (paramString1 != null)
    {
      EasyMetric localEasyMetric = paramString1.a("success", Boolean.valueOf(paramBoolean2));
      if (paramBoolean1)
      {
        paramString1 = "video";
        localEasyMetric.a("type", paramString1).a("media_duration", Double.valueOf(paramDouble)).a(false);
      }
    }
    else
    {
      paramString2 = a(paramString2, paramString3);
      if (paramString2 != null)
      {
        if (!paramBoolean2) {
          break label108;
        }
        paramString1 = "SNAP_SENT_SUCCESS";
        label74:
        paramString2 = paramString2.a(paramString1);
        if (!paramBoolean1) {
          break label114;
        }
      }
    }
    label108:
    label114:
    for (paramString1 = "video";; paramString1 = "image")
    {
      paramString2.a("type", paramString1).a(false);
      return;
      paramString1 = "image";
      break;
      paramString1 = "SNAP_SENT_FAILED";
      break label74;
    }
  }
  
  public final void a(@chc UUID paramUUID)
  {
    a("PULL_TO_REFRESH", paramUUID);
    paramUUID = a("PULL_TO_REFRESH", "PULL_TO_REFRESH");
    if (paramUUID != null) {
      paramUUID.b(false);
    }
  }
  
  public final void b()
  {
    mDictionaryEasyMetric.a("FIRST_ITEM_READY", true);
    mDictionaryEasyMetric.a("CONTENT_READY", true);
  }
  
  public final void b(@chc PageContext paramPageContext, @chd UUID paramUUID)
  {
    a("FIRST_ITEM_READY", paramPageContext, paramUUID);
  }
  
  public static enum PageContext
  {
    FEED,  STORY;
    
    private PageContext() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.NetworkAnalytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */