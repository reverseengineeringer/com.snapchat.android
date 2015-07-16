import android.os.SystemClock;
import android.text.TextUtils;
import com.addlive.service.AddLiveService;
import com.addlive.service.MediaType;
import com.addlive.service.VideoStreamDescriptor;
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
import com.snapchat.android.livechat.AdlHelper.b;
import com.snapchat.android.livechat.AdlHelper.d;
import org.json.JSONException;
import org.json.JSONObject;

final class aif$a
  extends AddLiveServiceListenerAdapter
{
  private aif$a(aif paramaif) {}
  
  public final void onConnectionLost(ConnectionLostEvent paramConnectionLostEvent)
  {
    new StringBuilder("Got lost connection to AddLive session with scope: ").append(paramConnectionLostEvent.getScopeId());
    switch (aif.8.a[a.i.ordinal()])
    {
    default: 
      if (!a.a(paramConnectionLostEvent.getScopeId()))
      {
        a.f().disconnect(AdlHelper.a("disconnectOnConnLost"), paramConnectionLostEvent.getScopeId());
        return;
      }
      break;
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      new StringBuilder("Got user event while the application is in a wrong state ").append(a.i);
      return;
    }
    a.i();
    if (paramConnectionLostEvent.isWillReconnect())
    {
      a.i = AdlHelper.b.c;
      return;
    }
    a.b(a.h);
  }
  
  public final void onMediaStreamEvent(UserStateChangedEvent paramUserStateChangedEvent)
  {
    if (!aif.a(a, paramUserStateChangedEvent.getScopeId())) {
      break label14;
    }
    label14:
    while (paramUserStateChangedEvent.getMediaType() != MediaType.VIDEO) {
      return;
    }
    if (paramUserStateChangedEvent.isVideoPublished())
    {
      a.g = paramUserStateChangedEvent.getVideoSinkId();
      a.j();
      a.n.mStartOfVideoStream = SystemClock.elapsedRealtime();
    }
    for (a.k = AdlHelper.d.b;; a.k = AdlHelper.d.a)
    {
      a.m = paramUserStateChangedEvent.isVideoPublished();
      if (a.m) {
        break;
      }
      a.b.setVisibility(4);
      a.a.a(false);
      return;
      a.g = "";
      a.k();
    }
  }
  
  public final void onMessage(MessageEvent paramMessageEvent)
  {
    if (!aif.a(a, paramMessageEvent.getScopeId())) {}
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
          localObject = a;
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
          a.l = true;
          a.a.b(true);
          return;
        }
        if ("USER_DISCONNECTED".equalsIgnoreCase(a))
        {
          a.l = false;
          a.a.b(false);
          return;
        }
      }
      catch (JSONException paramMessageEvent) {}
    }
  }
  
  public final void onSessionReconnected(SessionReconnectedEvent paramSessionReconnectedEvent)
  {
    if ((a.h == null) || (!a.a(paramSessionReconnectedEvent.getScopeId()))) {}
    do
    {
      return;
      a.i = AdlHelper.b.d;
    } while (a.j == AdlHelper.d.a);
    a.d();
  }
  
  public final void onUserEvent(UserStateChangedEvent paramUserStateChangedEvent)
  {
    switch (aif.8.a[a.i.ordinal()])
    {
    }
    while (!a.a(paramUserStateChangedEvent.getScopeId()))
    {
      return;
      if ((a.h != null) && (a.a(paramUserStateChangedEvent.getScopeId())))
      {
        a.h();
        continue;
        new StringBuilder("Got user event while the application is in a wrong state ").append(a.i);
        return;
      }
    }
    aif localaif = a;
    boolean bool;
    if ((paramUserStateChangedEvent.isConnected()) && (paramUserStateChangedEvent.isVideoPublished()))
    {
      bool = true;
      m = bool;
      if (!paramUserStateChangedEvent.isConnected()) {
        break label267;
      }
      new StringBuilder("Remote peer joined the AddLive session: ").append(paramUserStateChangedEvent.getUserId());
      a.n.a(HereAnalytics.SetupPhase.HERE_ADL_REMOTE_PEER_JOINED);
      if (paramUserStateChangedEvent.isVideoPublished())
      {
        a.g = paramUserStateChangedEvent.getVideoSinkId();
        a.j();
        a.n.mStartOfVideoStream = SystemClock.elapsedRealtime();
        a.k = AdlHelper.d.b;
      }
      a.a(true);
    }
    for (;;)
    {
      a.l = paramUserStateChangedEvent.isConnected();
      a.a.b(paramUserStateChangedEvent.isConnected());
      return;
      bool = false;
      break;
      label267:
      a.i();
    }
  }
  
  public final void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent paramVideoFrameSizeChangedEvent)
  {
    if (TextUtils.equals(paramVideoFrameSizeChangedEvent.getSinkId(), a.g))
    {
      if (a.b == null) {}
      do
      {
        do
        {
          return;
          a.b.resolutionChanged(paramVideoFrameSizeChangedEvent.getWidth(), paramVideoFrameSizeChangedEvent.getHeight());
        } while (a.k != AdlHelper.d.b);
        a.k = AdlHelper.d.c;
        a.b.setVisibility(0);
        a.a.a(true);
        paramVideoFrameSizeChangedEvent = a.n;
        if (mStartOfVideoStream != -1L)
        {
          long l1 = SystemClock.elapsedRealtime();
          long l2 = mStartOfVideoStream;
          mStartOfVideoStream = -1L;
          new EasyMetric("HERE_KEYFRAME_RECEIVED").a(l1 - l2).e();
        }
        paramVideoFrameSizeChangedEvent = a;
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

/* Location:
 * Qualified Name:     aif.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */