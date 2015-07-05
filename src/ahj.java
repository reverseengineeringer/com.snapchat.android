import android.app.Activity;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;
import com.addlive.service.AddLiveService.VideoFrameMetadata;
import com.addlive.service.AuthDetails;
import com.addlive.service.ConnectionDescriptor;
import com.addlive.service.MediaConnection;
import com.addlive.service.MediaType;
import com.addlive.service.Responder;
import com.addlive.service.ResponderAdapter;
import com.addlive.service.VideoStreamDescriptor;
import com.addlive.service.listener.AddLiveServiceListener;
import com.addlive.service.listener.AddLiveServiceListenerAdapter;
import com.addlive.service.listener.ConnectionLostEvent;
import com.addlive.service.listener.MessageEvent;
import com.addlive.service.listener.SessionReconnectedEvent;
import com.addlive.service.listener.UserStateChangedEvent;
import com.addlive.service.listener.VideoFrameSizeChangedEvent;
import com.addlive.view.ALVideoTextureView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.analytics.HereAnalytics.SetupPhase;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.ui.here.DisconnectReason;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ahj
  implements ahl, ald
{
  ahl.a a;
  ALVideoTextureView b;
  ahh.a c = new ahh.1();
  AddLiveServiceListener d;
  Runnable e;
  Runnable f;
  String g;
  bic h;
  ahh.b i = ahh.b.a;
  int j = ahh.d.a;
  int k = ahh.d.a;
  boolean l = false;
  HereAnalytics m;
  ahk n;
  Handler o;
  private Activity p;
  private boolean q = false;
  private boolean r = false;
  private String s;
  
  private void b(NetworkInfo paramNetworkInfo)
  {
    Object localObject = "Not-Connected";
    String str = "Unknown";
    if (paramNetworkInfo != null)
    {
      localObject = paramNetworkInfo.getTypeName();
      str = paramNetworkInfo.getSubtypeName();
    }
    Timber.b("livechat", "Updating connectivity info: " + (String)localObject + " / " + str, new Object[0]);
    paramNetworkInfo = e();
    ResponderAdapter localResponderAdapter = new ResponderAdapter();
    if ("WIFI".equals(localObject)) {}
    for (;;)
    {
      paramNetworkInfo.setProperty(localResponderAdapter, "global.service.connectivityType", (String)localObject);
      return;
      localObject = str;
    }
  }
  
  private void b(DisconnectReason paramDisconnectReason)
  {
    Object localObject = new Responder()
    {
      public final void errHandler(int paramAnonymousInt, String paramAnonymousString)
      {
        Timber.f("livechat", "Failed to terminate connection to AddLive scope: " + paramAnonymousString + "(ERR:" + paramAnonymousInt + ")", new Object[0]);
      }
    };
    e().deferredDisconnect(ahh.a((Responder)localObject, o), h.a(), 5000);
    i = ahh.b.e;
    a(false);
    a.a(paramDisconnectReason);
    paramDisconnectReason = n;
    Timber.c("livechat", "Flushing the AddLive performance metrics", new Object[0]);
    localObject = new ahk.1(paramDisconnectReason, "getEventsChecksum");
    a.getEventsChecksum((Responder)localObject);
  }
  
  private boolean c(bic parambic)
  {
    return e().getConnectionByScope(parambic.a()) != null;
  }
  
  public final void a()
  {
    Timber.b("livechat", "Releasing Adl Video chat provide", new Object[0]);
    if (!r)
    {
      Timber.f("livechat", "Got a request to release AdlLiveChatProvider while it's already released. Skipping", new Object[0]);
      return;
    }
    if (c.a() != InitState.INITIALIZED) {
      q = false;
    }
    for (;;)
    {
      if (e != null) {
        o.removeCallbacks(e);
      }
      if (f != null) {
        o.removeCallbacks(f);
      }
      i = ahh.b.a;
      j = ahh.d.a;
      ale.a().b(this);
      r = false;
      return;
      a(DisconnectReason.ADL_RELEASE);
      e().removeServiceListener(ahh.a("removeServiceListener"), d);
    }
  }
  
  public final void a(@cgb Activity paramActivity, @cgb ahl.a parama, @cgb HereAnalytics paramHereAnalytics)
  {
    Timber.b("livechat", "Setting up AdlLiveChatProvider", new Object[0]);
    if (r)
    {
      Timber.e("livechat", "Got a request to initialise AdlLiveChatProvider while provider is already initialised. Skipping", new Object[0]);
      return;
    }
    p = paramActivity;
    a = parama;
    m = paramHereAnalytics;
    o = new Handler(paramActivity.getMainLooper());
    q = true;
    switch (ahj.8.b[c.a().ordinal()])
    {
    }
    for (;;)
    {
      r = true;
      return;
      f();
      continue;
      Timber.c("livechat", "AddLive platform requested to initialise while in-init", new Object[0]);
      continue;
      paramActivity = new PlatformInitListener()
      {
        public final void onInitProgressChanged(InitProgressChangedEvent paramAnonymousInitProgressChangedEvent) {}
        
        public final void onInitStateChanged(InitStateChangedEvent paramAnonymousInitStateChangedEvent)
        {
          if (paramAnonymousInitStateChangedEvent.getState() == InitState.INITIALIZED)
          {
            f();
            return;
          }
          Timber.f("livechat", "Failed to initialize the AddLive SDK: %s (ERR: %d)", new Object[] { paramAnonymousInitStateChangedEvent.getErrMessage(), Integer.valueOf(paramAnonymousInitStateChangedEvent.getErrCode()) });
          new EasyMetric("HERE_INIT_FAILED").a(false);
        }
      };
      parama = Environment.getExternalStorageDirectory().getAbsolutePath();
      paramHereAnalytics = avb.a(bfr.a().c(), "|");
      PlatformInitOptions localPlatformInitOptions = new PlatformInitOptions();
      localPlatformInitOptions.setStorageDir(parama);
      localPlatformInitOptions.setApplicationId(Long.valueOf(513L));
      localPlatformInitOptions.setInteractionsLogTag("livechat");
      localPlatformInitOptions.setUseExternalVideoInput(true);
      localPlatformInitOptions.setStreamerEndpointResolver(paramHereAnalytics);
      localPlatformInitOptions.setConsoleLoggingEnabled(ReleaseManager.f());
      localPlatformInitOptions.setInteractionsLoggingEnabled(ReleaseManager.f());
      Timber.c("livechat", "Requesting the AddLive SDK to initialize self", new Object[0]);
      c.a(new ahh.3(o, paramActivity), localPlatformInitOptions, p);
      continue;
      Timber.f("livechat", "Got an invalid platform init state while requesting init: " + c.a(), new Object[0]);
    }
  }
  
  public final void a(NetworkInfo paramNetworkInfo)
  {
    final boolean bool = paramNetworkInfo.isConnected();
    o.post(new Runnable()
    {
      public final void run()
      {
        ahj localahj = ahj.this;
        boolean bool = bool;
        Timber.c("livechat", "Got change in reachability connected? ->  " + bool, new Object[0]);
        switch (ahj.8.a[i.ordinal()])
        {
        }
        do
        {
          do
          {
            return;
            o.removeCallbacks(f);
          } while (bool);
          localahj.e().disconnect(ahh.a("disconnect"), h.a());
          localahj.h();
          i = ahh.b.b;
          return;
          o.removeCallbacks(f);
        } while (!bool);
        if (f == null) {
          f = new ahj.7(localahj);
        }
        o.removeCallbacks(f);
        o.postDelayed(f, 3000L);
      }
    });
    b(paramNetworkInfo);
  }
  
  public final void a(@cgb bic parambic)
  {
    Timber.c("livechat", "Got a request to connect to AddLive session", new Object[0]);
    if (!r) {
      Timber.f("livechat", "Got an attempt to connect to AddLive scope, but the AdlLiveChatProvider is not initialised", new Object[0]);
    }
    do
    {
      return;
      if (c.a() != InitState.INITIALIZED)
      {
        i = ahh.b.b;
        h = parambic;
        return;
      }
      switch (ahj.8.a[i.ordinal()])
      {
      default: 
        return;
      case 1: 
      case 2: 
        e().cancelDeferredDisconnect(ahh.a("cancel deferred disconnect"), parambic.a());
        b(parambic);
        return;
      }
    } while (TextUtils.equals(s, parambic.a()));
    Timber.f("livechat", "Got a request to connect to a scope while we're connecting to a different one. Call disconnect first.", new Object[0]);
    return;
    h = parambic;
    return;
    if (c(parambic))
    {
      h = parambic;
      return;
    }
    b(DisconnectReason.ALREADY_CONNECTED_TO_DIFFERENT_SCOPE);
    Timber.f("livechat", "Got a request to connect to a scope while we're already connected to different one", new Object[0]);
    b(parambic);
  }
  
  public final void a(ALVideoTextureView paramALVideoTextureView)
  {
    b = paramALVideoTextureView;
  }
  
  public final void a(@cgb DisconnectReason paramDisconnectReason)
  {
    b.setVisibility(4);
    switch (ahj.8.a[i.ordinal()])
    {
    case 1: 
    case 2: 
    default: 
      return;
    case 4: 
      i = ahh.b.a;
      return;
    }
    b(paramDisconnectReason);
  }
  
  final void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (ArrayList localArrayList = new ArrayList(e().getConnectionByScope(h.a()).getUsersInSession().keySet());; localArrayList = new ArrayList())
    {
      e().setAllowedSenders(ahh.a("setAllowedSenders(AUDIO)"), h.a(), MediaType.AUDIO, localArrayList);
      e().setAllowedSenders(ahh.a("setAllowedSenders(VIDEO)"), h.a(), MediaType.VIDEO, localArrayList);
      if ((l) && (paramBoolean))
      {
        b.setVisibility(0);
        i();
      }
      return;
    }
  }
  
  public final void a(@cgb byte[] paramArrayOfByte, @cgb AddLiveService.VideoFrameMetadata paramVideoFrameMetadata)
  {
    AddLiveService localAddLiveService = e();
    if (localAddLiveService != null) {
      localAddLiveService.injectFrame(paramArrayOfByte, paramVideoFrameMetadata);
    }
  }
  
  final boolean a(String paramString)
  {
    return TextUtils.equals(paramString, h.a());
  }
  
  final void b(@cgb bic parambic)
  {
    m.a(HereAnalytics.SetupPhase.HERE_AVAILABLE);
    if (c(parambic))
    {
      h = parambic;
      i = ahh.b.c;
      g();
      a(true);
      return;
    }
    Timber.c("livechat", "Connecting to scope: '" + parambic.a() + "'", new Object[0]);
    ConnectionDescriptor localConnectionDescriptor = new ConnectionDescriptor();
    localConnectionDescriptor.setAutopublishAudio(false);
    localConnectionDescriptor.setAutopublishVideo(false);
    localConnectionDescriptor.setScopeId(parambic.a());
    Object localObject = new VideoStreamDescriptor();
    ((VideoStreamDescriptor)localObject).setMaxWidth(320);
    ((VideoStreamDescriptor)localObject).setMaxHeight(640);
    ((VideoStreamDescriptor)localObject).setMaxFps(24);
    ((VideoStreamDescriptor)localObject).setUseAdaptation(true);
    localConnectionDescriptor.setVideoStream((VideoStreamDescriptor)localObject);
    localObject = new AuthDetails();
    ((AuthDetails)localObject).setUserId(parambic.b());
    ((AuthDetails)localObject).setSalt(parambic.c());
    ((AuthDetails)localObject).setExpires(parambic.d());
    ((AuthDetails)localObject).setSignature(parambic.e());
    localConnectionDescriptor.setAuthDetails((AuthDetails)localObject);
    localObject = new Responder()
    {
      public final void errHandler(int paramAnonymousInt, String paramAnonymousString)
      {
        ahj localahj = ahj.this;
        Timber.f("livechat", "Got an AddLive connection error: %s (ERR: %d)", new Object[] { paramAnonymousString, Integer.valueOf(paramAnonymousInt) });
        i = ahh.b.a;
      }
    };
    e().connect(ahh.a((Responder)localObject, o), localConnectionDescriptor);
    h = parambic;
    s = parambic.a();
    i = ahh.b.c;
  }
  
  public final boolean b()
  {
    return r;
  }
  
  public final void c()
  {
    switch (ahj.8.a[i.ordinal()])
    {
    default: 
      Timber.e("livechat", "Got a request to publish video stream, but the connection is in a wrong state: " + i, new Object[0]);
      return;
    case 3: 
    case 4: 
      if (e == null)
      {
        e = new Runnable()
        {
          public final void run()
          {
            a.a(DisconnectReason.CONNECTION_LOST);
            e = null;
          }
        };
        o.postDelayed(e, 8000L);
      }
      j = ahh.d.b;
      return;
    }
    Responder local3 = new Responder()
    {
      public final void errHandler(int paramAnonymousInt, String paramAnonymousString)
      {
        Timber.f("livechat", "Failed to publish video due to: %s (ERR: %d)", new Object[] { paramAnonymousString, Integer.valueOf(paramAnonymousInt) });
        j = ahh.d.a;
      }
    };
    j = ahh.d.b;
    e().publish(ahh.a(local3, o), h.a(), MediaType.VIDEO);
    e().publish(ahh.a("publish(AUDIO)"), h.a(), MediaType.AUDIO);
  }
  
  public final void d()
  {
    switch (ahj.8.a[i.ordinal()])
    {
    default: 
      Timber.e("livechat", "Got a request to publish video stream, but the connection is in a wrong state: " + i, new Object[0]);
      return;
    case 3: 
    case 4: 
      j = ahh.d.a;
      return;
    }
    e().unpublish(ahh.a("unpublish(VIDEO)"), h.a(), MediaType.VIDEO);
    e().unpublish(ahh.a("unpublish(AUDIO)"), h.a(), MediaType.AUDIO);
    j = ahh.d.a;
  }
  
  final AddLiveService e()
  {
    return c.b();
  }
  
  final void f()
  {
    Timber.c("livechat", "AddLive SDK initialized", new Object[0]);
    if (!q)
    {
      Timber.b("livechat", "Initialisation was cancelled while in-progress", new Object[0]);
      return;
    }
    d = new ahi(new ahj.a((byte)0), o);
    e().addServiceListener(ahh.a("addServiceListener"), d);
    ale.a().a(this);
    b(ale.a().b());
    n = new ahk(e());
    n.a();
    if (i == ahh.b.b) {
      b(h);
    }
    for (;;)
    {
      Timber.c("livechat", "AddLive SDK initialized <- done", new Object[0]);
      return;
      i = ahh.b.a;
    }
  }
  
  final void g()
  {
    switch (ahj.8.a[i.ordinal()])
    {
    }
    for (;;)
    {
      m.a(HereAnalytics.SetupPhase.HERE_ADL_CONNECTED);
      i = ahh.b.d;
      if (ReleaseManager.f()) {
        e().startMeasuringStats(ahh.a("startMeasuringStats"), h.a(), 5);
      }
      a.a();
      if (j == ahh.d.b) {
        c();
      }
      if (e != null)
      {
        o.removeCallbacks(e);
        e = null;
      }
      return;
      Timber.e("livechat", "Got a second call to connect. Probably remote user triggered it first", new Object[0]);
      return;
      Timber.e("livechat", "Got a connection result, after the provider is in invalid state: " + i, new Object[0]);
      return;
      Timber.b("livechat", "Successfully connected to AddLive Scope", new Object[0]);
    }
  }
  
  final void h()
  {
    g = "";
    j();
    a.a(DisconnectReason.REMOTE_PEER_LEFT);
    b.setVisibility(4);
    a.a(false);
  }
  
  final void i()
  {
    b.stop();
    b.setSinkId(g);
    b.start();
  }
  
  final void j()
  {
    b.stop();
    b.setSinkId("");
  }
  
  final class a
    extends AddLiveServiceListenerAdapter
  {
    private a() {}
    
    public final void onConnectionLost(ConnectionLostEvent paramConnectionLostEvent)
    {
      Timber.e("livechat", "Got lost connection to AddLive session with scope: " + paramConnectionLostEvent.getScopeId(), new Object[0]);
      switch (ahj.8.a[i.ordinal()])
      {
      }
      while (!a(paramConnectionLostEvent.getScopeId()))
      {
        Timber.e("livechat", "Got connection lost for deferred disconnected connection. Canceling reconnect", new Object[0]);
        e().disconnect(ahh.a("disconnectOnConnLost"), paramConnectionLostEvent.getScopeId());
        return;
        Timber.e("livechat", "Got user event while the application is in a wrong state " + i, new Object[0]);
        return;
        Timber.c("livechat", "Got a connection lost event", new Object[0]);
      }
      h();
      if (paramConnectionLostEvent.isWillReconnect())
      {
        i = ahh.b.c;
        return;
      }
      Timber.e("livechat", "Got lost connection to AddLive session - the SDK will not attempt to reconnect due toexpired credentials. Will try to reconnect with hopefully updated credentials", new Object[0]);
      b(h);
    }
    
    public final void onMediaStreamEvent(UserStateChangedEvent paramUserStateChangedEvent)
    {
      if (!ahj.a(ahj.this, paramUserStateChangedEvent.getScopeId())) {
        break label14;
      }
      label14:
      while (paramUserStateChangedEvent.getMediaType() != MediaType.VIDEO) {
        return;
      }
      if (paramUserStateChangedEvent.isVideoPublished())
      {
        Timber.c("livechat", "Remote peer published video. Rendering it", new Object[0]);
        g = paramUserStateChangedEvent.getVideoSinkId();
        i();
        m.mStartOfVideoStream = SystemClock.elapsedRealtime();
      }
      for (k = ahh.d.b;; k = ahh.d.a)
      {
        l = paramUserStateChangedEvent.isVideoPublished();
        if (l) {
          break;
        }
        b.setVisibility(4);
        a.a(false);
        return;
        g = "";
        j();
      }
    }
    
    public final void onMessage(MessageEvent paramMessageEvent)
    {
      if (!ahj.a(ahj.this, paramMessageEvent.getScopeId())) {
        return;
      }
      paramMessageEvent = new String(paramMessageEvent.getData());
      for (;;)
      {
        int i;
        int j;
        try
        {
          Object localObject2 = new JSONObject(paramMessageEvent);
          Object localObject1 = new ahg(((JSONObject)localObject2).getString("messageType"));
          if (((JSONObject)localObject2).has("meta")) {
            b = ((JSONObject)localObject2).getJSONObject("meta");
          }
          if (!"CHANGE_PUBLISHED_RESOLUTION".equalsIgnoreCase(a)) {
            break;
          }
          localObject2 = ahj.this;
          i = b.getInt("width");
          j = b.getInt("height");
          localObject1 = new VideoStreamDescriptor();
          ((VideoStreamDescriptor)localObject1).setMaxFps(24);
          ((VideoStreamDescriptor)localObject1).setUseAdaptation(true);
          if (j < 640)
          {
            ((VideoStreamDescriptor)localObject1).setMaxHeight(j);
            ((VideoStreamDescriptor)localObject1).setMaxWidth(i);
            ((ahj)localObject2).e().reconfigureVideo(ahh.a("reconfigureVideo"), h.a(), (VideoStreamDescriptor)localObject1);
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          Timber.f("livechat", "Failed to parse AddLive message. raw data: " + paramMessageEvent, new Object[0]);
          return;
        }
        localJSONException.setMaxHeight(640);
        localJSONException.setMaxWidth(i * 640 / j);
      }
    }
    
    public final void onSessionReconnected(SessionReconnectedEvent paramSessionReconnectedEvent)
    {
      if ((h == null) || (!a(paramSessionReconnectedEvent.getScopeId()))) {}
      do
      {
        return;
        i = ahh.b.d;
      } while (j == ahh.d.a);
      c();
    }
    
    public final void onUserEvent(UserStateChangedEvent paramUserStateChangedEvent)
    {
      switch (ahj.8.a[i.ordinal()])
      {
      }
      while (!a(paramUserStateChangedEvent.getScopeId()))
      {
        Timber.e("livechat", "Got user event for session other than the current most one. Ignoring", new Object[0]);
        return;
        Timber.e("livechat", "Got user event prior to receiving the connect result. Forcing the onConnected()", new Object[0]);
        if ((h != null) && (a(paramUserStateChangedEvent.getScopeId())))
        {
          g();
          continue;
          Timber.e("livechat", "Got user event while the application is in a wrong state " + i, new Object[0]);
          return;
          Timber.c("livechat", "Got a new user event", new Object[0]);
        }
      }
      ahj localahj = ahj.this;
      if ((paramUserStateChangedEvent.isConnected()) && (paramUserStateChangedEvent.isVideoPublished())) {}
      for (boolean bool = true;; bool = false)
      {
        l = bool;
        if (!paramUserStateChangedEvent.isConnected()) {
          break;
        }
        Timber.b("livechat", "Remote peer joined the AddLive session: " + paramUserStateChangedEvent.getUserId(), new Object[0]);
        m.a(HereAnalytics.SetupPhase.HERE_ADL_REMOTE_PEER_JOINED);
        if (paramUserStateChangedEvent.isVideoPublished())
        {
          g = paramUserStateChangedEvent.getVideoSinkId();
          i();
          m.mStartOfVideoStream = SystemClock.elapsedRealtime();
          k = ahh.d.b;
        }
        a(true);
        return;
      }
      h();
    }
    
    public final void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent paramVideoFrameSizeChangedEvent)
    {
      if (TextUtils.equals(paramVideoFrameSizeChangedEvent.getSinkId(), g))
      {
        if (b == null) {}
        Object localObject;
        do
        {
          do
          {
            return;
            b.resolutionChanged(paramVideoFrameSizeChangedEvent.getWidth(), paramVideoFrameSizeChangedEvent.getHeight());
          } while (k != ahh.d.b);
          k = ahh.d.c;
          Timber.c("livechat", "Received remote video frame size changed. Reporting first frame", new Object[0]);
          b.setVisibility(0);
          a.a(true);
          paramVideoFrameSizeChangedEvent = m;
          if (mStartOfVideoStream != -1L)
          {
            long l1 = SystemClock.elapsedRealtime();
            long l2 = mStartOfVideoStream;
            mStartOfVideoStream = -1L;
            new EasyMetric("HERE_KEYFRAME_RECEIVED").a(l1 - l2).d();
          }
          localObject = ahj.this;
        } while ((i != ahh.b.d) || (h == null));
        int i = b.getWidth();
        int j = b.getHeight();
        paramVideoFrameSizeChangedEvent = new ahg("CHANGE_PUBLISHED_RESOLUTION");
        try
        {
          b.put("width", i);
          b.put("height", j);
          AddLiveService localAddLiveService = ((ahj)localObject).e();
          ahh.c localc = ahh.a("sendMessage");
          localObject = h.a();
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("messageType", a);
          if (b.names().length() > 0) {
            localJSONObject.put("meta", b);
          }
          localAddLiveService.sendMessage(localc, (String)localObject, localJSONObject.toString());
          return;
        }
        catch (JSONException paramVideoFrameSizeChangedEvent)
        {
          Timber.e("livechat", "Failed to send change resolution request", new Object[0]);
          return;
        }
      }
      Timber.c("livechat", "Got local video frame size changed: %s -> %dx%d", new Object[] { paramVideoFrameSizeChangedEvent.getSinkId(), Integer.valueOf(paramVideoFrameSizeChangedEvent.getWidth()), Integer.valueOf(paramVideoFrameSizeChangedEvent.getHeight()) });
    }
  }
}

/* Location:
 * Qualified Name:     ahj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */