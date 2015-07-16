package com.snapchat.android.analytics;

import ama;
import android.text.TextUtils;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class ChatPerformanceAnalytics
{
  protected static final String CANCELED_KEY = "canceled";
  protected static final String CHAT_MEDIA_DOWNLOAD_METRIC_NAME = "CHAT_MEDIA_DOWNLOAD";
  protected static final String DISCOVER_SHARE_BAR_ICON_LOAD_METRIC_NAME = "DISCOVER_SHARE_BAR_ICON_LOAD";
  protected static final String DISCOVER_SHARE_LINK_VALIDATION_METRIC_NAME = "DISCOVER_SHARE_LINK_VALIDATION";
  protected static final String DISCOVER_SHARE_LOCKED_VIDEO_LOAD_METRIC_NAME = "DISCOVER_SHARE_LOCKED_VIDEO_LOAD";
  private static final ChatPerformanceAnalytics INSTANCE = new ChatPerformanceAnalytics();
  protected static final String LINK_STATUS_KEY = "link_status";
  protected static final String REACHABILITY_KEY = "reachability";
  protected static final String SIZE_KEY = "size";
  protected static final String STATUS_KEY = "status";
  protected static final String TYPE_KEY = "type";
  protected static final String VIDEO_ERROR_KEY = "video_error";
  private final EasyMetric.EasyMetricFactory mEasyMetricFactory;
  public final ama mNetworkStatusManager;
  private final Set<String> mReportedLockedVideoLoadMetricIds = new HashSet();
  private final ConcurrentHashMap<String, Map<String, EasyMetric>> mTimedMetricsMap;
  
  private ChatPerformanceAnalytics()
  {
    this(new EasyMetric.EasyMetricFactory(), ama.a());
  }
  
  private ChatPerformanceAnalytics(EasyMetric.EasyMetricFactory paramEasyMetricFactory, ama paramama)
  {
    mEasyMetricFactory = paramEasyMetricFactory;
    mNetworkStatusManager = paramama;
    mTimedMetricsMap = new ConcurrentHashMap();
  }
  
  public static ChatPerformanceAnalytics a()
  {
    return INSTANCE;
  }
  
  public static void a(EasyMetric paramEasyMetric, int paramInt)
  {
    if (!TextUtils.equals("CHAT_MEDIA_DOWNLOAD", paramEasyMetric.a())) {
      throw new RuntimeException("Attempted to log end for CHAT_MEDIA_DOWNLOAD metric with metric named " + paramEasyMetric.a());
    }
    paramEasyMetric.a("size", Integer.valueOf(paramInt)).b(false);
  }
  
  public final EasyMetric a(ChatMediaType paramChatMediaType)
  {
    return EasyMetric.EasyMetricFactory.a("CHAT_MEDIA_DOWNLOAD").a("type", paramChatMediaType.name()).a("reachability", mNetworkStatusManager.f()).b();
  }
  
  public final EasyMetric a(String paramString1, String paramString2)
  {
    synchronized (mTimedMetricsMap)
    {
      paramString1 = (Map)mTimedMetricsMap.get(paramString1);
      if (paramString1 == null) {
        return null;
      }
      paramString1 = (EasyMetric)paramString1.get(paramString2);
      return paramString1;
    }
  }
  
  public final void a(String paramString1, String paramString2, EasyMetric paramEasyMetric)
  {
    synchronized (mTimedMetricsMap)
    {
      Map localMap = (Map)mTimedMetricsMap.get(paramString1);
      Object localObject = localMap;
      if (localMap == null)
      {
        localObject = new HashMap();
        mTimedMetricsMap.put(paramString1, localObject);
      }
      ((Map)localObject).put(paramString2, paramEasyMetric);
      return;
    }
  }
  
  public final void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean2) && (paramBoolean1)) {
      throw new RuntimeException("Logging DISCOVER_SHARE_BAR_ICON_LOAD cannot be both successful and canceled!");
    }
    paramString = a("DISCOVER_SHARE_BAR_ICON_LOAD", paramString);
    if (paramString != null)
    {
      if (paramBoolean2) {
        paramString.a("status", "CANCELED").b(false);
      }
    }
    else {
      return;
    }
    if (paramBoolean1)
    {
      paramString.a("status", "SUCCESS").b(false);
      return;
    }
    paramString.a("status", "FAILED").b(false);
  }
  
  public final void b(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    synchronized (mReportedLockedVideoLoadMetricIds)
    {
      if (!mReportedLockedVideoLoadMetricIds.contains(paramString))
      {
        EasyMetric localEasyMetric = a("DISCOVER_SHARE_LOCKED_VIDEO_LOAD", paramString);
        if (localEasyMetric != null)
        {
          localEasyMetric.a("canceled", Boolean.valueOf(paramBoolean1)).a("video_error", Boolean.valueOf(paramBoolean2)).b(false);
          mReportedLockedVideoLoadMetricIds.add(paramString);
        }
      }
      return;
    }
  }
  
  public static enum ChatMediaType
  {
    CHAT_MEDIA,  DISCOVER_SHARE_IMAGE,  DISCOVER_SHARE_VIDEO;
    
    private ChatMediaType() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.ChatPerformanceAnalytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */