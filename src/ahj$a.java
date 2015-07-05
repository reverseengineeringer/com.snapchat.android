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
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.analytics.HereAnalytics.SetupPhase;
import com.snapchat.android.analytics.framework.EasyMetric;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class ahj$a
  extends AddLiveServiceListenerAdapter
{
  private ahj$a(ahj paramahj) {}
  
  public final void onConnectionLost(ConnectionLostEvent paramConnectionLostEvent)
  {
    Timber.e("livechat", "Got lost connection to AddLive session with scope: " + paramConnectionLostEvent.getScopeId(), new Object[0]);
    switch (ahj.8.a[a.i.ordinal()])
    {
    }
    while (!a.a(paramConnectionLostEvent.getScopeId()))
    {
      Timber.e("livechat", "Got connection lost for deferred disconnected connection. Canceling reconnect", new Object[0]);
      a.e().disconnect(ahh.a("disconnectOnConnLost"), paramConnectionLostEvent.getScopeId());
      return;
      Timber.e("livechat", "Got user event while the application is in a wrong state " + a.i, new Object[0]);
      return;
      Timber.c("livechat", "Got a connection lost event", new Object[0]);
    }
    a.h();
    if (paramConnectionLostEvent.isWillReconnect())
    {
      a.i = ahh.b.c;
      return;
    }
    Timber.e("livechat", "Got lost connection to AddLive session - the SDK will not attempt to reconnect due toexpired credentials. Will try to reconnect with hopefully updated credentials", new Object[0]);
    a.b(a.h);
  }
  
  public final void onMediaStreamEvent(UserStateChangedEvent paramUserStateChangedEvent)
  {
    if (!ahj.a(a, paramUserStateChangedEvent.getScopeId())) {
      break label14;
    }
    label14:
    while (paramUserStateChangedEvent.getMediaType() != MediaType.VIDEO) {
      return;
    }
    if (paramUserStateChangedEvent.isVideoPublished())
    {
      Timber.c("livechat", "Remote peer published video. Rendering it", new Object[0]);
      a.g = paramUserStateChangedEvent.getVideoSinkId();
      a.i();
      a.m.mStartOfVideoStream = SystemClock.elapsedRealtime();
    }
    for (a.k = ahh.d.b;; a.k = ahh.d.a)
    {
      a.l = paramUserStateChangedEvent.isVideoPublished();
      if (a.l) {
        break;
      }
      a.b.setVisibility(4);
      a.a.a(false);
      return;
      a.g = "";
      a.j();
    }
  }
  
  public final void onMessage(MessageEvent paramMessageEvent)
  {
    if (!ahj.a(a, paramMessageEvent.getScopeId())) {
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
        localObject2 = a;
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
    if ((a.h == null) || (!a.a(paramSessionReconnectedEvent.getScopeId()))) {}
    do
    {
      return;
      a.i = ahh.b.d;
    } while (a.j == ahh.d.a);
    a.c();
  }
  
  public final void onUserEvent(UserStateChangedEvent paramUserStateChangedEvent)
  {
    switch (ahj.8.a[a.i.ordinal()])
    {
    }
    while (!a.a(paramUserStateChangedEvent.getScopeId()))
    {
      Timber.e("livechat", "Got user event for session other than the current most one. Ignoring", new Object[0]);
      return;
      Timber.e("livechat", "Got user event prior to receiving the connect result. Forcing the onConnected()", new Object[0]);
      if ((a.h != null) && (a.a(paramUserStateChangedEvent.getScopeId())))
      {
        a.g();
        continue;
        Timber.e("livechat", "Got user event while the application is in a wrong state " + a.i, new Object[0]);
        return;
        Timber.c("livechat", "Got a new user event", new Object[0]);
      }
    }
    ahj localahj = a;
    if ((paramUserStateChangedEvent.isConnected()) && (paramUserStateChangedEvent.isVideoPublished())) {}
    for (boolean bool = true;; bool = false)
    {
      l = bool;
      if (!paramUserStateChangedEvent.isConnected()) {
        break;
      }
      Timber.b("livechat", "Remote peer joined the AddLive session: " + paramUserStateChangedEvent.getUserId(), new Object[0]);
      a.m.a(HereAnalytics.SetupPhase.HERE_ADL_REMOTE_PEER_JOINED);
      if (paramUserStateChangedEvent.isVideoPublished())
      {
        a.g = paramUserStateChangedEvent.getVideoSinkId();
        a.i();
        a.m.mStartOfVideoStream = SystemClock.elapsedRealtime();
        a.k = ahh.d.b;
      }
      a.a(true);
      return;
    }
    a.h();
  }
  
  public final void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent paramVideoFrameSizeChangedEvent)
  {
    if (TextUtils.equals(paramVideoFrameSizeChangedEvent.getSinkId(), a.g))
    {
      if (a.b == null) {}
      Object localObject;
      do
      {
        do
        {
          return;
          a.b.resolutionChanged(paramVideoFrameSizeChangedEvent.getWidth(), paramVideoFrameSizeChangedEvent.getHeight());
        } while (a.k != ahh.d.b);
        a.k = ahh.d.c;
        Timber.c("livechat", "Received remote video frame size changed. Reporting first frame", new Object[0]);
        a.b.setVisibility(0);
        a.a.a(true);
        paramVideoFrameSizeChangedEvent = a.m;
        if (mStartOfVideoStream != -1L)
        {
          long l1 = SystemClock.elapsedRealtime();
          long l2 = mStartOfVideoStream;
          mStartOfVideoStream = -1L;
          new EasyMetric("HERE_KEYFRAME_RECEIVED").a(l1 - l2).d();
        }
        localObject = a;
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

/* Location:
 * Qualified Name:     ahj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */