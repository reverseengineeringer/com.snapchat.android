import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.view.BrightcoveTextureVideoView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public final class adv
  extends ady
  implements ado.a
{
  final MediaController a;
  final abq b;
  final abp c;
  FrameLayout d;
  DSnapPage e = null;
  boolean f = true;
  String g;
  DiscoverUsageAnalytics.ViewStatus h;
  protected final EventListener i = new EventListener()
  {
    public final void processEvent(Event paramAnonymousEvent)
    {
      String str2 = null;
      Object localObject1;
      int i;
      if (TextUtils.equals(paramAnonymousEvent.getType(), "progress"))
      {
        Timber.a("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", new Object[] { e, paramAnonymousEvent.toString() });
        localObject1 = paramAnonymousEvent.getType();
        i = -1;
        switch (((String)localObject1).hashCode())
        {
        default: 
          label104:
          switch (i)
          {
          }
          break;
        }
      }
      for (;;)
      {
        i();
        return;
        Timber.c("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", new Object[] { e, paramAnonymousEvent.toString() });
        break;
        if (!((String)localObject1).equals("didPlay")) {
          break label104;
        }
        i = 0;
        break label104;
        if (!((String)localObject1).equals("sourceNotFound")) {
          break label104;
        }
        i = 1;
        break label104;
        if (!((String)localObject1).equals("sourceNotPlayable")) {
          break label104;
        }
        i = 2;
        break label104;
        if (!((String)localObject1).equals("error")) {
          break label104;
        }
        i = 3;
        break label104;
        if (!((String)localObject1).equals("completed")) {
          break label104;
        }
        i = 4;
        break label104;
        f = false;
        g();
        b.a(g, false, true);
      }
      f = false;
      g();
      b.a(g, false, false);
      adv localadv = adv.this;
      label357:
      Object localObject2;
      label385:
      String str1;
      label415:
      Object localObject3;
      Object localObject4;
      String str3;
      if (properties != null)
      {
        localObject1 = (Video)properties.get("video");
        if (localObject1 != null)
        {
          localObject1 = ((Video)localObject1).getId();
          localObject2 = (Source)properties.get("source");
          if (localObject2 != null)
          {
            localObject2 = ((Source)localObject2).getUrl();
            if (properties.containsKey("errorCode"))
            {
              str1 = properties.get("errorCode").toString();
              localObject3 = localObject2;
              localObject4 = localObject1;
              str3 = str1;
              if (properties.containsKey("errorMessage"))
              {
                str2 = properties.get("errorMessage").toString();
                str3 = str1;
                localObject4 = localObject1;
                localObject3 = localObject2;
              }
            }
          }
        }
      }
      for (;;)
      {
        localObject1 = e.h;
        localObject2 = e.a;
        str1 = e.b();
        paramAnonymousEvent = paramAnonymousEvent.getType();
        paramAnonymousEvent = EasyMetric.EasyMetricFactory.a("DISCOVER_BRIGHTCOVE_ERROR").a("publisher_name", localObject1).a("dsnap_id", localObject2).a("hash", str1).a("error_type", paramAnonymousEvent);
        if (localObject4 != null) {
          paramAnonymousEvent.a("video_id", localObject4);
        }
        if (localObject3 != null) {
          paramAnonymousEvent.a("source", localObject3);
        }
        if (str3 != null) {
          paramAnonymousEvent.a("error_code", str3);
        }
        if (str2 != null) {
          paramAnonymousEvent.a("error_message", str2);
        }
        paramAnonymousEvent.a(false);
        break;
        g();
        break;
        str1 = null;
        break label415;
        localObject2 = null;
        break label385;
        localObject1 = null;
        break label357;
        str3 = null;
        localObject3 = null;
        localObject4 = null;
      }
    }
  };
  private final LayoutInflater k;
  private final aes l;
  private final aby m;
  private final alb n;
  private final aei o;
  private final ado p = new ado(this);
  private final Map<Integer, String> q = new HashMap(2);
  private final auv r;
  private View s;
  private ViewGroup t;
  private BrightcoveTextureVideoView u;
  private MediaState v = MediaState.NOT_STARTED;
  private boolean w = false;
  private final aeq x = new aeq()
  {
    public final void a(String paramAnonymousString)
    {
      h = DiscoverUsageAnalytics.ViewStatus.ERROR;
    }
    
    public final void b() {}
    
    public final void r_()
    {
      h = DiscoverUsageAnalytics.ViewStatus.COMPLETED;
    }
  };
  
  public adv(Context paramContext)
  {
    this((LayoutInflater)paramContext.getSystemService("layout_inflater"), new MediaController(paramContext, false), new aes(), new aei(), aby.a(), abq.a(), new abp(), alb.a(), new auv(paramContext));
  }
  
  private adv(LayoutInflater paramLayoutInflater, MediaController paramMediaController, aes paramaes, aei paramaei, aby paramaby, abq paramabq, abp paramabp, alb paramalb, auv paramauv)
  {
    r = paramauv;
    k = paramLayoutInflater;
    l = paramaes;
    a = paramMediaController;
    o = paramaei;
    m = paramaby;
    b = paramabq;
    c = paramabp;
    n = paramalb;
  }
  
  private void j()
  {
    a.setAnchorView(d);
    if (Build.VERSION.SDK_INT <= 17)
    {
      a.requestLayout();
      a.post(new Runnable()
      {
        public final void run()
        {
          RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)d.getLayoutParams();
          bottomMargin = a.getMeasuredHeight();
          d.setLayoutParams(localLayoutParams);
        }
      });
    }
  }
  
  public final aim a(View paramView, adb paramadb, @cgb List<View> paramList)
  {
    return null;
  }
  
  public final DiscoverUsageAnalytics.ViewStatus a(long paramLong)
  {
    return h;
  }
  
  public final void a()
  {
    f = true;
    i();
    abq localabq = b;
    String str1 = g;
    String str2 = e.h;
    String str3 = e.g;
    String str4 = e.a;
    String str5 = e.e().b;
    localabq.a("DISCOVER_REMOTE_VIDEO_BUFFER_TIME", str1, EasyMetric.EasyMetricFactory.a("DISCOVER_REMOTE_VIDEO_BUFFER_TIME").a("video_session_id", str1).a("publisher_name", str2).a("edition_id", str3).a("dsnap_id", str4).a("video_id", str5).b());
  }
  
  public final void a(int paramInt)
  {
    Timber.a("DSnapItemRemoteVideoAdapter", "onRotate: " + paramInt, new Object[0]);
    a.hide();
  }
  
  public final void a(DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    e = paramDSnapPage;
    if ((e != null) && (v != MediaState.SUCCESS) && (j == MediaState.SUCCESS))
    {
      paramDSnapPage = l;
      bjx localbjx = e;
      Timber.c("RemoteVideoViewController", "Assigning video properties: %s", new Object[] { localbjx });
      e = localbjx;
      paramDSnapPage.b();
    }
    v = j;
    i();
  }
  
  public final boolean a(DSnapView paramDSnapView, @cgb DSnapPage paramDSnapPage, @cgb DSnapPanel paramDSnapPanel)
  {
    s = k.inflate(2130968665, null);
    t = ((ViewGroup)s.findViewById(2131362314));
    d = ((FrameLayout)s.findViewById(2131362316));
    j();
    o.a = ((ProgressBar)s.findViewById(2131362315));
    e = paramDSnapPage;
    i();
    return true;
  }
  
  public final void b()
  {
    f = false;
    i();
    b.b(g, false, true);
  }
  
  public final void c() {}
  
  public final View d()
  {
    return s;
  }
  
  public final DSnapPanel.MediaType e()
  {
    return DSnapPanel.MediaType.REMOTE_VIDEO;
  }
  
  public final void f()
  {
    Timber.a("DSnapItemRemoteVideoAdapter", "Remote video scrolled - hiding controller.", new Object[0]);
    a.hide();
  }
  
  final void g()
  {
    Timber.a("DSnapItemRemoteVideoAdapter", "Showing media controller indefinitely for %s", new Object[] { e });
    if (w) {
      a.show(0);
    }
  }
  
  public final boolean h()
  {
    return true;
  }
  
  final void i()
  {
    aei localaei = o;
    MediaState localMediaState = v;
    boolean bool = f;
    if ((!localMediaState.isError()) && ((localMediaState.isLoading()) || (bool)))
    {
      a.setVisibility(0);
      return;
    }
    a.setVisibility(8);
  }
  
  public final void o_()
  {
    Timber.c("DSnapItemRemoteVideoAdapter", "Entering view for %s", new Object[] { e });
    if (w)
    {
      Timber.f("DSnapItemRemoteVideoAdapter", "View already entered for %s", new Object[] { e });
      if (ReleaseManager.e()) {
        throw new IllegalStateException(String.format("View for %s is already entered!", new Object[] { e }));
      }
    }
    else
    {
      w = true;
      if ((v.isError()) || (v == MediaState.NOT_STARTED))
      {
        Timber.c("DSnapItemRemoteVideoAdapter", "User entered view for a failed long form video - attempting to acquire urls again.", new Object[0]);
        aby.a(e.g);
      }
      k.inflate(2130968590, t);
      u = ((BrightcoveTextureVideoView)t.findViewById(2131361921));
      a.setMediaPlayer(u);
      j();
      u.setMediaController(a, d, null);
      Object localObject1 = u.getEventEmitter();
      q.put(Integer.valueOf(((EventEmitter)localObject1).on("*", i)), "*");
      q.put(Integer.valueOf(((EventEmitter)localObject1).on("progress", p)), "progress");
      localObject1 = l;
      c = u;
      ((aes)localObject1).b();
      l.d = x;
      f = true;
      localObject1 = l;
      Object localObject2 = c.getEventEmitter();
      b.put(Integer.valueOf(((EventEmitter)localObject2).on("*", a)), "*");
      c.start();
      f = true;
      i();
      if (!r.a()) {
        g();
      }
      g = UUID.randomUUID().toString();
      localObject1 = b;
      localObject2 = g;
      String str1 = e.a();
      String str2 = e.a;
      String str3 = e.g;
      String str4 = e.e().b;
      ((abq)localObject1).a("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME", (String)localObject2, EasyMetric.EasyMetricFactory.a("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME").a("video_session_id", localObject2).a("publisher_name", str1).a("dsnap_id", str2).a("edition_id", str4).a("video_id", str3).b());
      localObject1 = n;
      Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Pausing background downloads", new Object[0]);
      b = true;
      super.o_();
    }
  }
  
  public final void p_()
  {
    Timber.c("DSnapItemRemoteVideoAdapter", "Leaving view for %s", new Object[] { e });
    if (!w)
    {
      Timber.f("DSnapItemRemoteVideoAdapter", "View was entered for %s", new Object[] { e });
      if (ReleaseManager.e()) {
        throw new IllegalStateException(String.format("View for %s not entered.", new Object[] { e }));
      }
    }
    else
    {
      l.a();
      a.hide();
      Object localObject = b;
      String str1 = e.h;
      String str2 = e.g;
      String str3 = e.e().b;
      aer localaer = l.a;
      long l1 = b;
      long l2 = localaer.a();
      EasyMetric.EasyMetricFactory.a("DISCOVER_EDITION_STREAMING_DOWNLOADED_BYTES").a("publisher_name", str1).a("edition_id", str2).a("reachability", a.f()).a("video_id", str3).a("return_size_bytes", Long.valueOf(l2 + l1)).a(false);
      if (u != null)
      {
        localObject = q.keySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          int j = ((Integer)((Iterator)localObject).next()).intValue();
          u.getEventEmitter().off((String)q.get(Integer.valueOf(j)), j);
        }
        q.clear();
        u.setMediaController(null);
        u = null;
      }
      t.removeAllViews();
      localObject = n;
      Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Resuming background downloads", new Object[0]);
      b = false;
      ((alb)localObject).c();
      if (f)
      {
        b.a(g, true, false);
        b.b(g, true, false);
      }
      g = null;
      w = false;
      super.p_();
    }
  }
}

/* Location:
 * Qualified Name:     adv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */