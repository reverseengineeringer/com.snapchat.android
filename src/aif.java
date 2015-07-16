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
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.analytics.HereAnalytics.SetupPhase;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.livechat.AdlHelper;
import com.snapchat.android.livechat.AdlHelper.1;
import com.snapchat.android.livechat.AdlHelper.3;
import com.snapchat.android.livechat.AdlHelper.a;
import com.snapchat.android.livechat.AdlHelper.b;
import com.snapchat.android.livechat.AdlHelper.d;
import com.snapchat.android.ui.here.DisconnectReason;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class aif
  implements aih, alz
{
  aih.a a;
  ALVideoTextureView b;
  AdlHelper.a c = new AdlHelper.1();
  AddLiveServiceListener d;
  Runnable e;
  Runnable f;
  String g;
  bjc h;
  AdlHelper.b i = AdlHelper.b.a;
  int j = AdlHelper.d.a;
  int k = AdlHelper.d.a;
  boolean l = false;
  boolean m = false;
  HereAnalytics n;
  aig o;
  Handler p;
  private Activity q;
  private boolean r = false;
  private boolean s = false;
  private String t;
  
  private void b(NetworkInfo paramNetworkInfo)
  {
    Object localObject = "Not-Connected";
    String str = "Unknown";
    if (paramNetworkInfo != null)
    {
      localObject = paramNetworkInfo.getTypeName();
      str = paramNetworkInfo.getSubtypeName();
    }
    new StringBuilder("Updating connectivity info: ").append((String)localObject).append(" / ").append(str);
    paramNetworkInfo = f();
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
        new StringBuilder("Failed to terminate connection to AddLive scope: ").append(paramAnonymousString).append("(ERR:").append(paramAnonymousInt).append(")");
      }
    };
    try
    {
      f().sendMessage(AdlHelper.a("sendMessage"), h.a(), new aid("USER_DISCONNECTED").a());
      f().deferredDisconnect(AdlHelper.a((Responder)localObject, p), h.a(), 5000);
      i = AdlHelper.b.e;
      a(false);
      a.a(paramDisconnectReason);
      paramDisconnectReason = o;
      localObject = new aig.1(paramDisconnectReason, "getEventsChecksum");
      a.getEventsChecksum((Responder)localObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        new StringBuilder("Failed to send user disconnected message: ").append(localJSONException.getMessage());
      }
    }
  }
  
  private boolean c(bjc parambjc)
  {
    return f().getConnectionByScope(parambjc.a()) != null;
  }
  
  public final void a()
  {
    if (!s) {
      return;
    }
    if (c.a() != InitState.INITIALIZED) {
      r = false;
    }
    for (;;)
    {
      if (e != null) {
        p.removeCallbacks(e);
      }
      if (f != null) {
        p.removeCallbacks(f);
      }
      i = AdlHelper.b.a;
      j = AdlHelper.d.a;
      ama.a().b(this);
      s = false;
      return;
      a(DisconnectReason.ADL_RELEASE);
      f().removeServiceListener(AdlHelper.a("removeServiceListener"), d);
    }
  }
  
  public final void a(@chc Activity paramActivity, @chc aih.a parama, @chc HereAnalytics paramHereAnalytics)
  {
    if (s) {
      return;
    }
    q = paramActivity;
    a = parama;
    n = paramHereAnalytics;
    p = new Handler(paramActivity.getMainLooper());
    r = true;
    switch (aif.8.b[c.a().ordinal()])
    {
    }
    for (;;)
    {
      s = true;
      return;
      g();
      continue;
      paramActivity = new PlatformInitListener()
      {
        public final void onInitProgressChanged(InitProgressChangedEvent paramAnonymousInitProgressChangedEvent) {}
        
        public final void onInitStateChanged(InitStateChangedEvent paramAnonymousInitStateChangedEvent)
        {
          if (paramAnonymousInitStateChangedEvent.getState() == InitState.INITIALIZED)
          {
            g();
            return;
          }
          paramAnonymousInitStateChangedEvent.getErrMessage();
          paramAnonymousInitStateChangedEvent.getErrCode();
          new EasyMetric("HERE_INIT_FAILED").a(false);
        }
      };
      parama = Environment.getExternalStorageDirectory().getAbsolutePath();
      paramHereAnalytics = avz.a(bgr.a().c(), "|");
      PlatformInitOptions localPlatformInitOptions = new PlatformInitOptions();
      localPlatformInitOptions.setStorageDir(parama);
      localPlatformInitOptions.setApplicationId(Long.valueOf(513L));
      localPlatformInitOptions.setInteractionsLogTag("livechat");
      localPlatformInitOptions.setUseExternalVideoInput(true);
      localPlatformInitOptions.setStreamerEndpointResolver(paramHereAnalytics);
      localPlatformInitOptions.setConsoleLoggingEnabled(ReleaseManager.f());
      localPlatformInitOptions.setInteractionsLoggingEnabled(ReleaseManager.f());
      c.a(new AdlHelper.3(p, paramActivity), localPlatformInitOptions, q);
      continue;
      new StringBuilder("Got an invalid platform init state while requesting init: ").append(c.a());
    }
  }
  
  public final void a(NetworkInfo paramNetworkInfo)
  {
    final boolean bool = paramNetworkInfo.isConnected();
    p.post(new Runnable()
    {
      public final void run()
      {
        aif localaif = aif.this;
        boolean bool = bool;
        switch (aif.8.a[i.ordinal()])
        {
        }
        do
        {
          do
          {
            return;
            p.removeCallbacks(f);
          } while (bool);
          localaif.f().disconnect(AdlHelper.a("disconnect"), h.a());
          localaif.i();
          i = AdlHelper.b.b;
          return;
          p.removeCallbacks(f);
        } while (!bool);
        if (f == null) {
          f = new aif.7(localaif);
        }
        p.removeCallbacks(f);
        p.postDelayed(f, 3000L);
      }
    });
    b(paramNetworkInfo);
  }
  
  public final void a(@chc bjc parambjc)
  {
    if (!s) {}
    do
    {
      return;
      if (c.a() != InitState.INITIALIZED)
      {
        i = AdlHelper.b.b;
        h = parambjc;
        return;
      }
      switch (aif.8.a[i.ordinal()])
      {
      default: 
        return;
      case 1: 
      case 2: 
        f().cancelDeferredDisconnect(AdlHelper.a("cancel deferred disconnect"), parambjc.a());
        b(parambjc);
        return;
      }
    } while (!TextUtils.equals(t, parambjc.a()));
    return;
    h = parambjc;
    return;
    if (c(parambjc))
    {
      h = parambjc;
      return;
    }
    b(DisconnectReason.ALREADY_CONNECTED_TO_DIFFERENT_SCOPE);
    b(parambjc);
  }
  
  public final void a(ALVideoTextureView paramALVideoTextureView)
  {
    b = paramALVideoTextureView;
  }
  
  public final void a(@chc DisconnectReason paramDisconnectReason)
  {
    b.setVisibility(4);
    m = false;
    switch (aif.8.a[i.ordinal()])
    {
    case 1: 
    case 2: 
    default: 
      return;
    case 4: 
      i = AdlHelper.b.a;
      return;
    }
    b(paramDisconnectReason);
  }
  
  final void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (ArrayList localArrayList = new ArrayList(f().getConnectionByScope(h.a()).getUsersInSession().keySet());; localArrayList = new ArrayList())
    {
      f().setAllowedSenders(AdlHelper.a("setAllowedSenders(AUDIO)"), h.a(), MediaType.AUDIO, localArrayList);
      f().setAllowedSenders(AdlHelper.a("setAllowedSenders(VIDEO)"), h.a(), MediaType.VIDEO, localArrayList);
      if ((m) && (paramBoolean))
      {
        b.setVisibility(0);
        j();
      }
      return;
    }
  }
  
  public final void a(@chc byte[] paramArrayOfByte, @chc AddLiveService.VideoFrameMetadata paramVideoFrameMetadata)
  {
    AddLiveService localAddLiveService = f();
    if (localAddLiveService != null) {
      localAddLiveService.injectFrame(paramArrayOfByte, paramVideoFrameMetadata);
    }
  }
  
  final boolean a(String paramString)
  {
    return TextUtils.equals(paramString, h.a());
  }
  
  final void b(@chc bjc parambjc)
  {
    n.a(HereAnalytics.SetupPhase.HERE_AVAILABLE);
    if (c(parambjc))
    {
      h = parambjc;
      i = AdlHelper.b.c;
      h();
      a(true);
      try
      {
        f().sendMessage(AdlHelper.a("sendMessage"), h.a(), new aid("USER_CONNECTED").a());
        a.b(l);
        return;
      }
      catch (JSONException parambjc)
      {
        for (;;)
        {
          new StringBuilder("Failed to send user connected message: ").append(parambjc.getMessage());
        }
      }
    }
    new StringBuilder("Connecting to scope: '").append(parambjc.a()).append("'");
    ConnectionDescriptor localConnectionDescriptor = new ConnectionDescriptor();
    localConnectionDescriptor.setAutopublishAudio(false);
    localConnectionDescriptor.setAutopublishVideo(false);
    localConnectionDescriptor.setScopeId(parambjc.a());
    Object localObject = new VideoStreamDescriptor();
    ((VideoStreamDescriptor)localObject).setMaxWidth(320);
    ((VideoStreamDescriptor)localObject).setMaxHeight(640);
    ((VideoStreamDescriptor)localObject).setMaxFps(24);
    ((VideoStreamDescriptor)localObject).setUseAdaptation(true);
    localConnectionDescriptor.setVideoStream((VideoStreamDescriptor)localObject);
    localObject = new AuthDetails();
    if ((parambjc.f() == null) || (parambjc.f().isEmpty()))
    {
      ((AuthDetails)localObject).setUserId(parambjc.b());
      ((AuthDetails)localObject).setSalt(parambjc.c());
      ((AuthDetails)localObject).setExpires(parambjc.d());
      ((AuthDetails)localObject).setSignature(parambjc.e());
    }
    for (;;)
    {
      localConnectionDescriptor.setAuthDetails((AuthDetails)localObject);
      localObject = new Responder()
      {
        public final void errHandler(int paramAnonymousInt, String paramAnonymousString)
        {
          i = AdlHelper.b.a;
        }
      };
      f().connect(AdlHelper.a((Responder)localObject, p), localConnectionDescriptor);
      h = parambjc;
      t = parambjc.a();
      i = AdlHelper.b.c;
      return;
      ((AuthDetails)localObject).setToken(parambjc.f());
      ((AuthDetails)localObject).setMac(parambjc.g());
    }
  }
  
  public final boolean b()
  {
    return s;
  }
  
  public final boolean c()
  {
    return (i == AdlHelper.b.d) && (l);
  }
  
  public final void d()
  {
    switch (aif.8.a[i.ordinal()])
    {
    default: 
      new StringBuilder("Got a request to publish video stream, but the connection is in a wrong state: ").append(i);
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
        p.postDelayed(e, 8000L);
      }
      j = AdlHelper.d.b;
      return;
    }
    Responder local3 = new Responder()
    {
      public final void errHandler(int paramAnonymousInt, String paramAnonymousString)
      {
        j = AdlHelper.d.a;
      }
    };
    j = AdlHelper.d.b;
    f().publish(AdlHelper.a(local3, p), h.a(), MediaType.VIDEO);
    f().publish(AdlHelper.a("publish(AUDIO)"), h.a(), MediaType.AUDIO);
  }
  
  public final void e()
  {
    switch (aif.8.a[i.ordinal()])
    {
    default: 
      new StringBuilder("Got a request to publish video stream, but the connection is in a wrong state: ").append(i);
      return;
    case 3: 
    case 4: 
      j = AdlHelper.d.a;
      return;
    }
    f().unpublish(AdlHelper.a("unpublish(VIDEO)"), h.a(), MediaType.VIDEO);
    f().unpublish(AdlHelper.a("unpublish(AUDIO)"), h.a(), MediaType.AUDIO);
    j = AdlHelper.d.a;
  }
  
  final AddLiveService f()
  {
    return c.b();
  }
  
  final void g()
  {
    if (!r) {
      return;
    }
    d = new aie(new aif.a((byte)0), p);
    f().addServiceListener(AdlHelper.a("addServiceListener"), d);
    ama.a().a(this);
    b(ama.a().b());
    o = new aig(f());
    o.a();
    if (i == AdlHelper.b.b)
    {
      b(h);
      return;
    }
    i = AdlHelper.b.a;
  }
  
  final void h()
  {
    switch (aif.8.a[i.ordinal()])
    {
    case 3: 
    default: 
      n.a(HereAnalytics.SetupPhase.HERE_ADL_CONNECTED);
      i = AdlHelper.b.d;
      if (ReleaseManager.f()) {
        f().startMeasuringStats(AdlHelper.a("startMeasuringStats"), h.a(), 5);
      }
      a.a();
      if (j == AdlHelper.d.b) {
        d();
      }
      if (e != null)
      {
        p.removeCallbacks(e);
        e = null;
      }
    case 5: 
      return;
    }
    new StringBuilder("Got a connection result, after the provider is in invalid state: ").append(i);
  }
  
  final void i()
  {
    g = "";
    k();
    a.a(DisconnectReason.REMOTE_PEER_LEFT);
    b.setVisibility(4);
    a.a(false);
  }
  
  final void j()
  {
    b.stop();
    b.setSinkId(g);
    b.start();
  }
  
  final void k()
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
      new StringBuilder("Got lost connection to AddLive session with scope: ").append(paramConnectionLostEvent.getScopeId());
      switch (aif.8.a[i.ordinal()])
      {
      default: 
        if (!a(paramConnectionLostEvent.getScopeId()))
        {
          f().disconnect(AdlHelper.a("disconnectOnConnLost"), paramConnectionLostEvent.getScopeId());
          return;
        }
        break;
      case 1: 
      case 2: 
      case 3: 
      case 4: 
        new StringBuilder("Got user event while the application is in a wrong state ").append(i);
        return;
      }
      i();
      if (paramConnectionLostEvent.isWillReconnect())
      {
        i = AdlHelper.b.c;
        return;
      }
      b(h);
    }
    
    public final void onMediaStreamEvent(UserStateChangedEvent paramUserStateChangedEvent)
    {
      if (!aif.a(aif.this, paramUserStateChangedEvent.getScopeId())) {
        break label14;
      }
      label14:
      while (paramUserStateChangedEvent.getMediaType() != MediaType.VIDEO) {
        return;
      }
      if (paramUserStateChangedEvent.isVideoPublished())
      {
        g = paramUserStateChangedEvent.getVideoSinkId();
        j();
        n.mStartOfVideoStream = SystemClock.elapsedRealtime();
      }
      for (k = AdlHelper.d.b;; k = AdlHelper.d.a)
      {
        m = paramUserStateChangedEvent.isVideoPublished();
        if (m) {
          break;
        }
        b.setVisibility(4);
        a.a(false);
        return;
        g = "";
        k();
      }
    }
    
    public final void onMessage(MessageEvent paramMessageEvent)
    {
      if (!aif.a(aif.this, paramMessageEvent.getScopeId())) {}
      for (;;)
      {
        return;
        paramMessageEvent = new String(paramMessageEvent.getData());
        try
        {
          Object localObject = new JSONObject(paramMessageEvent);
          paramMessageEvent = new aid(((JSONObject)localObject).getString("messageType"));
          if (((JSONObject)localObject).has("meta")) {
            b = ((JSONObject)localObject).getJSONObject("meta");
          }
          if ("CHANGE_PUBLISHED_RESOLUTION".equalsIgnoreCase(a))
          {
            localObject = aif.this;
            int i = b.getInt("width");
            int j = b.getInt("height");
            paramMessageEvent = new VideoStreamDescriptor();
            paramMessageEvent.setMaxFps(24);
            paramMessageEvent.setUseAdaptation(true);
            if (j < 640)
            {
              paramMessageEvent.setMaxHeight(j);
              paramMessageEvent.setMaxWidth(i);
            }
            for (;;)
            {
              ((aif)localObject).f().reconfigureVideo(AdlHelper.a("reconfigureVideo"), h.a(), paramMessageEvent);
              return;
              paramMessageEvent.setMaxHeight(640);
              paramMessageEvent.setMaxWidth(i * 640 / j);
            }
          }
          if ("USER_CONNECTED".equalsIgnoreCase(a))
          {
            l = true;
            a.b(true);
            return;
          }
          if ("USER_DISCONNECTED".equalsIgnoreCase(a))
          {
            l = false;
            a.b(false);
            return;
          }
        }
        catch (JSONException paramMessageEvent) {}
      }
    }
    
    public final void onSessionReconnected(SessionReconnectedEvent paramSessionReconnectedEvent)
    {
      if ((h == null) || (!a(paramSessionReconnectedEvent.getScopeId()))) {}
      do
      {
        return;
        i = AdlHelper.b.d;
      } while (j == AdlHelper.d.a);
      d();
    }
    
    public final void onUserEvent(UserStateChangedEvent paramUserStateChangedEvent)
    {
      switch (aif.8.a[i.ordinal()])
      {
      }
      while (!a(paramUserStateChangedEvent.getScopeId()))
      {
        return;
        if ((h != null) && (a(paramUserStateChangedEvent.getScopeId())))
        {
          h();
          continue;
          new StringBuilder("Got user event while the application is in a wrong state ").append(i);
          return;
        }
      }
      aif localaif = aif.this;
      boolean bool;
      if ((paramUserStateChangedEvent.isConnected()) && (paramUserStateChangedEvent.isVideoPublished()))
      {
        bool = true;
        m = bool;
        if (!paramUserStateChangedEvent.isConnected()) {
          break label267;
        }
        new StringBuilder("Remote peer joined the AddLive session: ").append(paramUserStateChangedEvent.getUserId());
        n.a(HereAnalytics.SetupPhase.HERE_ADL_REMOTE_PEER_JOINED);
        if (paramUserStateChangedEvent.isVideoPublished())
        {
          g = paramUserStateChangedEvent.getVideoSinkId();
          j();
          n.mStartOfVideoStream = SystemClock.elapsedRealtime();
          k = AdlHelper.d.b;
        }
        a(true);
      }
      for (;;)
      {
        l = paramUserStateChangedEvent.isConnected();
        a.b(paramUserStateChangedEvent.isConnected());
        return;
        bool = false;
        break;
        label267:
        i();
      }
    }
    
    public final void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent paramVideoFrameSizeChangedEvent)
    {
      if (TextUtils.equals(paramVideoFrameSizeChangedEvent.getSinkId(), g))
      {
        if (b == null) {}
        do
        {
          do
          {
            return;
            b.resolutionChanged(paramVideoFrameSizeChangedEvent.getWidth(), paramVideoFrameSizeChangedEvent.getHeight());
          } while (k != AdlHelper.d.b);
          k = AdlHelper.d.c;
          b.setVisibility(0);
          a.a(true);
          paramVideoFrameSizeChangedEvent = n;
          if (mStartOfVideoStream != -1L)
          {
            long l1 = SystemClock.elapsedRealtime();
            long l2 = mStartOfVideoStream;
            mStartOfVideoStream = -1L;
            new EasyMetric("HERE_KEYFRAME_RECEIVED").a(l1 - l2).e();
          }
          paramVideoFrameSizeChangedEvent = aif.this;
        } while ((i != AdlHelper.b.d) || (h == null));
        int i = b.getWidth();
        int j = b.getHeight();
        aid localaid = new aid("CHANGE_PUBLISHED_RESOLUTION");
        try
        {
          b.put("width", i);
          b.put("height", j);
          paramVideoFrameSizeChangedEvent.f().sendMessage(AdlHelper.a("sendMessage"), h.a(), localaid.a());
          return;
        }
        catch (JSONException paramVideoFrameSizeChangedEvent)
        {
          return;
        }
      }
      paramVideoFrameSizeChangedEvent.getSinkId();
      paramVideoFrameSizeChangedEvent.getWidth();
      paramVideoFrameSizeChangedEvent.getHeight();
    }
  }
}

/* Location:
 * Qualified Name:     aif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */