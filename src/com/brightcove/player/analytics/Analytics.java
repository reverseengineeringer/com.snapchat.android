package com.brightcove.player.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.model.Video;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@Emits(events={"account", "didSetAnalyticsBaseParams", "error"})
@ListensFor(events={"addAnalyticsBaseParams", "completed", "didSeekTo", "didSetVideo", "progress", "readyToPlay", "setAnalyticsBaseParams", "version"})
public class Analytics
  extends AbstractComponent
{
  private static final String BASE_URL = "https://metrics.brightcove.com/tracker";
  private static final String DEVICE_OS = "android";
  private static final String DOMAIN = "videocloud";
  private static final int ENGAGEMENT_PERIOD = 10000;
  public static final String TAG = Analytics.class.getSimpleName();
  private String account;
  private final Map<String, String> baseParams = new HashMap();
  private Context context;
  public String destination;
  private String deviceType;
  private int duration;
  private int endTime;
  private boolean hasStarted;
  private String platform = "android-native-sdk";
  private String platformVersion;
  private String source;
  private int startTime;
  private boolean uniqueIdentifierEnabled;
  
  public Analytics(EventEmitter paramEventEmitter, Context paramContext)
  {
    this(paramEventEmitter, paramContext, Analytics.class);
  }
  
  protected Analytics(EventEmitter paramEventEmitter, Context paramContext, Class<? extends Component> paramClass)
  {
    super(paramEventEmitter, paramClass);
    context = paramContext;
    endTime = 0;
    startTime = 0;
    hasStarted = false;
    setDestination(paramContext);
    initializeEvents(paramEventEmitter);
    deviceType = getDeviceType(paramContext);
  }
  
  private void emitDidSetEvent()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("baseParams", baseParams);
    eventEmitter.emit("didSetAnalyticsBaseParams", localHashMap);
  }
  
  private String getDeviceType(Context paramContext)
  {
    if (paramContext != null) {
      try
      {
        if (((TelephonyManager)paramContext.getSystemService("phone")).getPhoneType() != 0) {
          return "mobile";
        }
      }
      catch (UnsupportedOperationException paramContext)
      {
        return "tablet";
      }
      catch (IllegalStateException paramContext)
      {
        return "tablet";
      }
    }
    return "tablet";
  }
  
  private void initializeEvents(EventEmitter paramEventEmitter)
  {
    paramEventEmitter.on("addAnalyticsBaseParams", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        paramAnonymousEvent = (Map)properties.get("baseParams");
        if (paramAnonymousEvent != null) {
          baseParams.putAll(paramAnonymousEvent);
        }
        Analytics.this.emitDidSetEvent();
      }
    });
    paramEventEmitter.on("setAnalyticsBaseParams", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        paramAnonymousEvent = (Map)properties.get("baseParams");
        if (paramAnonymousEvent != null)
        {
          baseParams.clear();
          baseParams.putAll(paramAnonymousEvent);
        }
        Analytics.this.emitDidSetEvent();
      }
    });
    paramEventEmitter.on("willChangeVideo", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        if ((properties.containsKey("currentVideo")) && (endTime - startTime > 0)) {
          Analytics.this.sendVideoEngagementRequest(paramAnonymousEvent, startTime, endTime);
        }
        Analytics.this.sendVideoAnalyticsRequest(paramAnonymousEvent, "video_impression", null);
        Analytics.access$602(Analytics.this, Analytics.access$302(Analytics.this, Analytics.access$202(Analytics.this, 0)));
        Analytics.access$702(Analytics.this, false);
      }
    });
    paramEventEmitter.on("didSeekTo", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        int i = paramAnonymousEvent.getIntegerProperty("seekPosition");
        if ((i <= 0) || (i - endTime <= 1000)) {
          return;
        }
        Analytics.this.sendVideoEngagementRequest(paramAnonymousEvent, startTime, endTime);
        Analytics.access$302(Analytics.this, Analytics.access$202(Analytics.this, i));
      }
    });
    paramEventEmitter.on("progress", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        Video localVideo = (Video)properties.get("video");
        int i = paramAnonymousEvent.getIntegerProperty("playheadPosition");
        if (i >= 0)
        {
          if (Math.abs(endTime - i) <= 5000) {
            break label83;
          }
          Analytics.this.sendVideoEngagementRequest(paramAnonymousEvent, startTime, endTime);
          Analytics.access$302(Analytics.this, Analytics.access$202(Analytics.this, i));
        }
        label83:
        do
        {
          return;
          Analytics.access$202(Analytics.this, i);
          if ((!hasStarted) && (localVideo != null) && (endTime != 0))
          {
            Analytics.this.sendVideoAnalyticsRequest(paramAnonymousEvent, "video_view", null);
            Analytics.access$702(Analytics.this, true);
          }
        } while (endTime - startTime < 10000);
        Analytics.this.sendVideoEngagementRequest(paramAnonymousEvent, startTime, endTime);
        Analytics.access$302(Analytics.this, endTime);
      }
    });
    paramEventEmitter.on("completed", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        int i = paramAnonymousEvent.getIntegerProperty("playheadPosition");
        if (i >= 0)
        {
          Analytics.access$202(Analytics.this, i);
          Analytics.this.sendVideoEngagementRequest(paramAnonymousEvent, startTime, endTime);
          Analytics.access$302(Analytics.this, endTime);
          Analytics.this.sendVideoAnalyticsRequest(paramAnonymousEvent, "video_complete", null);
        }
      }
    });
    paramEventEmitter.on("videoDurationChanged", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        int i = ((Integer)properties.get("duration")).intValue();
        if (i > 0) {
          Analytics.access$602(Analytics.this, i);
        }
      }
    });
    paramEventEmitter.on("version", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        Analytics.access$802(Analytics.this, (String)properties.get("buildVersion"));
      }
    });
  }
  
  private void sendVideoAnalyticsRequest(Event paramEvent, String paramString, Map<String, String> paramMap)
  {
    Object localObject1 = paramMap;
    if (paramMap == null) {
      localObject1 = new HashMap();
    }
    Object localObject2 = (Video)properties.get("video");
    paramMap = (Map<String, String>)localObject2;
    if (localObject2 == null) {
      paramMap = (Video)properties.get("currentVideo");
    }
    localObject2 = paramMap;
    if (paramMap == null) {
      localObject2 = (Video)properties.get("nextVideo");
    }
    if (localObject2 != null)
    {
      paramMap = ((Video)localObject2).getId();
      if (!paramMap.isEmpty()) {
        ((Map)localObject1).put("video", paramMap);
      }
      paramMap = ((Video)localObject2).getStringProperty("pubId");
      if ((paramMap == null) || (paramMap.isEmpty())) {
        break label148;
      }
      ((Map)localObject1).put("account", paramMap);
    }
    for (;;)
    {
      sendAnalyticsRequest(paramEvent, paramString, (Map)localObject1);
      label148:
      do
      {
        return;
      } while (account == null);
      ((Map)localObject1).put("account", account);
    }
  }
  
  private void sendVideoEngagementRequest(Event paramEvent, int paramInt1, int paramInt2)
  {
    paramInt1 /= 1000;
    paramInt2 = paramInt2 / 1000 - 1;
    if (paramInt2 < paramInt1) {
      return;
    }
    HashMap localHashMap = new HashMap();
    if (duration > 0) {
      localHashMap.put("range", String.format("%d..%d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
    }
    for (;;)
    {
      sendVideoAnalyticsRequest(paramEvent, "video_engagement", localHashMap);
      return;
      localHashMap.put("video_seconds_viewed", String.format("%d", new Object[] { Integer.valueOf(paramInt2 - paramInt1) }));
    }
  }
  
  private void setDestination(Context paramContext)
  {
    Object localObject;
    if (paramContext != null)
    {
      localObject = paramContext.getApplicationContext();
      if (localObject != null)
      {
        localObject = ((Context)localObject).getPackageManager();
        if (localObject == null) {}
      }
    }
    try
    {
      localObject = (String)((PackageManager)localObject).getApplicationLabel(((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 0));
      setDestination("bcsdk://" + (String)localObject + "/" + paramContext.getClass().getPackage().getName());
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  public String getAccount()
  {
    return account;
  }
  
  public boolean getUniqueIdentifierEnabled()
  {
    return uniqueIdentifierEnabled;
  }
  
  @SuppressLint({"NewApi"})
  protected Map<String, String> sendAnalyticsRequest(Event paramEvent, String paramString, Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(baseParams);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    paramEvent = (Video)properties.get("video");
    if ((paramEvent != null) && (paramEvent.getId() != null))
    {
      paramEvent = paramEvent.getStringProperty("name");
      if ((paramEvent != null) && (paramEvent.isEmpty())) {
        localHashMap.put("video_name", paramEvent);
      }
    }
    if (duration > 0) {
      localHashMap.put("video_duration", duration / 1000);
    }
    localHashMap.put("event", paramString);
    localHashMap.put("domain", "videocloud");
    localHashMap.put("device_os", "android");
    localHashMap.put("device_type", deviceType);
    localHashMap.put("device_os_version", Build.VERSION.RELEASE);
    localHashMap.put("time", new Date().getTime());
    localHashMap.put("platform", platform);
    localHashMap.put("platform_version", platformVersion);
    if (destination != null) {
      localHashMap.put("destination", destination);
    }
    if (source != null) {
      localHashMap.put("source", source);
    }
    if (uniqueIdentifierEnabled) {
      localHashMap.put("user", Settings.Secure.getString(context.getContentResolver(), "android_id"));
    }
    paramEvent = new HttpAsyncTask();
    paramString = new HashMap[1];
    paramString[0] = localHashMap;
    if (Build.VERSION.SDK_INT >= 14)
    {
      paramEvent.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, paramString);
      return localHashMap;
    }
    paramEvent.execute(paramString);
    return localHashMap;
  }
  
  public void setAccount(String paramString)
  {
    account = paramString;
    HashMap localHashMap = new HashMap();
    localHashMap.put("value", paramString);
    eventEmitter.emit("account", localHashMap);
  }
  
  public void setDestination(String paramString)
  {
    destination = paramString;
    paramString = Uri.parse(paramString);
    paramString.getScheme();
    paramString.getAuthority();
  }
  
  public void setSource(String paramString)
  {
    source = paramString;
    paramString = Uri.parse(paramString);
    paramString.getScheme();
    paramString.getAuthority();
  }
  
  public void setUniqueIdentifierEnabled(boolean paramBoolean)
  {
    uniqueIdentifierEnabled = paramBoolean;
  }
  
  public static class Fields
  {
    protected static final String ACCOUNT = "account";
    public static final String BASE_PARAMS = "baseParams";
    protected static final String DESTINATION = "destination";
    protected static final String DEVICE_OS = "device_os";
    protected static final String DEVICE_OS_VERSION = "device_os_version";
    protected static final String DEVICE_TYPE = "device_type";
    protected static final String DOMAIN = "domain";
    protected static final String EVENT = "event";
    protected static final String EVENT_VIDEO_COMPLETE = "video_complete";
    protected static final String EVENT_VIDEO_ENGAGEMENT = "video_engagement";
    protected static final String EVENT_VIDEO_IMPRESSION = "video_impression";
    protected static final String EVENT_VIDEO_VIEW = "video_view";
    protected static final String PLATFORM = "platform";
    protected static final String PLATFORM_VERSION = "platform_version";
    @Deprecated
    protected static final String PUBLISHER_ID = "account";
    protected static final String RANGE = "range";
    protected static final String SOURCE = "source";
    protected static final String TIME = "time";
    protected static final String USER = "user";
    protected static final String VIDEO_DURATION = "video_duration";
    protected static final String VIDEO_ID = "video";
    protected static final String VIDEO_NAME = "video_name";
    protected static final String VIDEO_SECONDS_VIEWED = "video_seconds_viewed";
  }
  
  class HttpAsyncTask
    extends AsyncTask<Map<String, String>, Integer, Void>
  {
    HttpService httpService = new HttpService(60, 60);
    
    public HttpAsyncTask() {}
    
    @SafeVarargs
    protected final Void doInBackground(Map<String, String>... paramVarArgs)
    {
      Object localObject = paramVarArgs[0];
      paramVarArgs = new HashMap();
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        paramVarArgs.put(localEntry.getKey(), localEntry.getValue());
      }
      try
      {
        paramVarArgs = HttpService.buildURIWithQueryParameters("https://metrics.brightcove.com/tracker", paramVarArgs);
        httpService.doGetRequest(paramVarArgs);
        return null;
      }
      catch (MalformedURLException paramVarArgs)
      {
        for (;;)
        {
          eventEmitter.emit("error", Collections.singletonMap("error", paramVarArgs));
        }
      }
      catch (UnsupportedEncodingException paramVarArgs)
      {
        for (;;)
        {
          eventEmitter.emit("error", Collections.singletonMap("error", paramVarArgs));
        }
      }
      catch (URISyntaxException paramVarArgs)
      {
        for (;;)
        {
          eventEmitter.emit("error", Collections.singletonMap("error", paramVarArgs));
        }
      }
      catch (IOException paramVarArgs)
      {
        for (;;)
        {
          eventEmitter.emit("error", Collections.singletonMap("error", paramVarArgs));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */