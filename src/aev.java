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

public final class aev
  extends aey
  implements aeo.a
{
  final MediaController a;
  final acq b;
  final acp c;
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
      TextUtils.equals(paramAnonymousEvent.getType(), "progress");
      Object localObject1 = e;
      paramAnonymousEvent.toString();
      localObject1 = paramAnonymousEvent.getType();
      int i = -1;
      switch (((String)localObject1).hashCode())
      {
      default: 
        switch (i)
        {
        }
        break;
      }
      for (;;)
      {
        l();
        return;
        if (!((String)localObject1).equals("didPlay")) {
          break;
        }
        i = 0;
        break;
        if (!((String)localObject1).equals("sourceNotFound")) {
          break;
        }
        i = 1;
        break;
        if (!((String)localObject1).equals("sourceNotPlayable")) {
          break;
        }
        i = 2;
        break;
        if (!((String)localObject1).equals("error")) {
          break;
        }
        i = 3;
        break;
        if (!((String)localObject1).equals("completed")) {
          break;
        }
        i = 4;
        break;
        f = false;
        h();
        b.a(g, false, true);
      }
      f = false;
      h();
      b.a(g, false, false);
      aev localaev = aev.this;
      label310:
      Object localObject2;
      label338:
      String str1;
      label368:
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
        h();
        break;
        str1 = null;
        break label368;
        localObject2 = null;
        break label338;
        localObject1 = null;
        break label310;
        str3 = null;
        localObject3 = null;
        localObject4 = null;
      }
    }
  };
  private final LayoutInflater k;
  private final afs l;
  private final acy m;
  private final alw n;
  private final afi o;
  private final aeo p = new aeo(this);
  private final Map<Integer, String> q = new HashMap(2);
  private final avt r;
  private View s;
  private ViewGroup t;
  private BrightcoveTextureVideoView u;
  private MediaState v = MediaState.NOT_STARTED;
  private boolean w = false;
  private final afq x = new afq()
  {
    public final void a(String paramAnonymousString)
    {
      h = DiscoverUsageAnalytics.ViewStatus.ERROR;
    }
    
    public final void b() {}
    
    public final void p_()
    {
      h = DiscoverUsageAnalytics.ViewStatus.COMPLETED;
    }
  };
  
  public aev(Context paramContext)
  {
    this((LayoutInflater)paramContext.getSystemService("layout_inflater"), new MediaController(paramContext, false), new afs(), new afi(), acy.a(), acq.a(), new acp(), alw.a(), new avt(paramContext));
  }
  
  private aev(LayoutInflater paramLayoutInflater, MediaController paramMediaController, afs paramafs, afi paramafi, acy paramacy, acq paramacq, acp paramacp, alw paramalw, avt paramavt)
  {
    r = paramavt;
    k = paramLayoutInflater;
    l = paramafs;
    a = paramMediaController;
    o = paramafi;
    m = paramacy;
    b = paramacq;
    c = paramacp;
    n = paramalw;
  }
  
  private void m()
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
  
  public final aji a(View paramView, aeb paramaeb, @chc List<View> paramList)
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
    l();
    acq localacq = b;
    String str1 = g;
    String str2 = e.h;
    String str3 = e.g;
    String str4 = e.a;
    String str5 = e.e().b;
    localacq.a("DISCOVER_REMOTE_VIDEO_BUFFER_TIME", str1, EasyMetric.EasyMetricFactory.a("DISCOVER_REMOTE_VIDEO_BUFFER_TIME").a("video_session_id", str1).a("publisher_name", str2).a("edition_id", str3).a("dsnap_id", str4).a("video_id", str5).b());
  }
  
  public final void a(DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    e = paramDSnapPage;
    if ((e != null) && (v != MediaState.SUCCESS) && (j == MediaState.SUCCESS))
    {
      paramDSnapPage = l;
      e = e;
      paramDSnapPage.b();
    }
    v = j;
    l();
  }
  
  public final boolean a(DSnapView paramDSnapView, @chc DSnapPage paramDSnapPage, @chc DSnapPanel paramDSnapPanel)
  {
    s = k.inflate(2130968666, null);
    t = ((ViewGroup)s.findViewById(2131362312));
    d = ((FrameLayout)s.findViewById(2131362314));
    m();
    o.a = ((ProgressBar)s.findViewById(2131362313));
    e = paramDSnapPage;
    l();
    return true;
  }
  
  public final void b()
  {
    f = false;
    l();
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
    a.hide();
  }
  
  public final void g()
  {
    a.hide();
  }
  
  final void h()
  {
    DSnapPage localDSnapPage = e;
    if (w) {
      a.show(0);
    }
  }
  
  public final boolean i()
  {
    return true;
  }
  
  public final long j()
  {
    return u.getDuration();
  }
  
  public final long k()
  {
    afs localafs = l;
    int j = c.getDuration();
    if (j < 0) {
      return -1L;
    }
    long l2 = c.getCurrentPosition();
    long l1 = l2;
    if (l2 >= j) {
      l1 = 0L;
    }
    return l1 + g * j;
  }
  
  final void l()
  {
    afi localafi = o;
    MediaState localMediaState = v;
    boolean bool = f;
    if ((!localMediaState.isError()) && ((localMediaState.isLoading()) || (bool)))
    {
      a.setVisibility(0);
      return;
    }
    a.setVisibility(8);
  }
  
  public final void m_()
  {
    Object localObject1 = e;
    if (w)
    {
      localObject1 = e;
      if (ReleaseManager.e()) {
        throw new IllegalStateException(String.format("View for %s is already entered!", new Object[] { e }));
      }
    }
    else
    {
      w = true;
      if ((v.isError()) || (v == MediaState.NOT_STARTED)) {
        acy.a(e.g);
      }
      k.inflate(2130968591, t);
      u = ((BrightcoveTextureVideoView)t.findViewById(2131361921));
      a.setMediaPlayer(u);
      m();
      u.setMediaController(a, d, null);
      localObject1 = u.getEventEmitter();
      q.put(Integer.valueOf(((EventEmitter)localObject1).on("*", i)), "*");
      q.put(Integer.valueOf(((EventEmitter)localObject1).on("progress", p)), "progress");
      localObject1 = l;
      c = u;
      ((afs)localObject1).b();
      l.d = x;
      f = true;
      localObject1 = l;
      Object localObject2 = c.getEventEmitter();
      b.put(Integer.valueOf(((EventEmitter)localObject2).on("*", a)), "*");
      c.start();
      f = true;
      l();
      if (!r.a()) {
        h();
      }
      g = UUID.randomUUID().toString();
      localObject1 = b;
      localObject2 = g;
      String str1 = e.a();
      String str2 = e.a;
      String str3 = e.g;
      String str4 = e.e().b;
      ((acq)localObject1).a("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME", (String)localObject2, EasyMetric.EasyMetricFactory.a("DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME").a("video_session_id", localObject2).a("publisher_name", str1).a("dsnap_id", str2).a("edition_id", str4).a("video_id", str3).b());
      n.b = true;
      super.m_();
    }
  }
  
  public final void n_()
  {
    Object localObject = e;
    if (!w)
    {
      localObject = e;
      if (ReleaseManager.e()) {
        throw new IllegalStateException(String.format("View for %s not entered.", new Object[] { e }));
      }
    }
    else
    {
      l.a();
      a.hide();
      localObject = b;
      String str1 = e.h;
      String str2 = e.g;
      String str3 = e.e().b;
      afr localafr = l.a;
      long l1 = b;
      long l2 = localafr.a();
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
      b = false;
      ((alw)localObject).c();
      if (f)
      {
        b.a(g, true, false);
        b.b(g, true, false);
      }
      g = null;
      w = false;
      super.n_();
    }
  }
}

/* Location:
 * Qualified Name:     aev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */