import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ChatPerformanceAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;

public final class aft
  extends afu
  implements akl, akm.a
{
  private final akk o = new akm(paramc, (akh)a, this);
  private final abp p = new abp();
  private boolean q;
  private boolean r = false;
  private Long s;
  
  public aft(@cgb afr.c paramc, adl paramadl)
  {
    super(paramc, paramadl);
    o.a(this);
  }
  
  private void l()
  {
    d.setText(2131492984);
    e.setText(2131493535);
  }
  
  public final void a()
  {
    ChatPerformanceAnalytics localChatPerformanceAnalytics = n;
    String str = a.d();
    if (localChatPerformanceAnalytics.a("DISCOVER_SHARE_LOCKED_VIDEO_LOAD", str) == null) {
      localChatPerformanceAnalytics.a("DISCOVER_SHARE_LOCKED_VIDEO_LOAD", str, EasyMetric.EasyMetricFactory.a("DISCOVER_SHARE_LOCKED_VIDEO_LOAD").a("reachability", mNetworkStatusManager.f()).b());
    }
    super.a();
    if (!q)
    {
      q = true;
      o.b();
      if (!o.a()) {
        o.c();
      }
    }
  }
  
  public final void b()
  {
    if (s == null) {
      n.b(a.d(), true, r);
    }
    super.b();
    if (q)
    {
      q = false;
      o.d();
      o.f();
    }
    DiscoverLinkStatusResult.LinkStatus localLinkStatus;
    Double localDouble1;
    label78:
    Double localDouble2;
    if (j == null)
    {
      localLinkStatus = null;
      if (s != null) {
        break label147;
      }
      localDouble1 = null;
      if (o.g() != -1L) {
        break label168;
      }
      localDouble2 = null;
      label96:
      if ((!k) || (TextUtils.isEmpty(a.mAdId))) {
        break label187;
      }
      na.b(a, j(), localDouble1, localLinkStatus, localDouble2);
    }
    for (;;)
    {
      s = null;
      return;
      localLinkStatus = j.mLinkStatus;
      break;
      label147:
      localDouble1 = Double.valueOf(avf.a(SystemClock.elapsedRealtime() - s.longValue()));
      break label78;
      label168:
      localDouble2 = Double.valueOf(avf.a(o.g()));
      break label96;
      label187:
      if (!TextUtils.isEmpty(a.mDSnapId)) {
        na.a(a, j(), localDouble1, localLinkStatus, localDouble2);
      }
    }
  }
  
  public final void c()
  {
    super.c();
    q = false;
    o.e();
  }
  
  public final void d()
  {
    Timber.f("ChatDiscoverVideoViewingSession", "Could not play video for ChatShareDSnap\n" + a, new Object[0]);
    n.b(a.d(), false, true);
    r = true;
    if (j()) {}
    for (Object localObject = j.mLinkStatus;; localObject = null)
    {
      if ((localObject == DiscoverLinkStatusResult.LinkStatus.ARCHIVED) || (localObject == DiscoverLinkStatusResult.LinkStatus.LIVE)) {
        l();
      }
      localObject = a.mPublisherName;
      String str = a.mDSnapId;
      float f1 = a.mVideoWidth;
      float f2 = a.mVideoHeight;
      EasyMetric.EasyMetricFactory.a("DISCOVER_SHARED_VIDEO_PLAYBACK_ERROR").a("publisher_name", localObject).a("dsnap_id", str).a("video_width", Float.valueOf(f1)).a("video_height", Float.valueOf(f2)).a(false);
      s = null;
      return;
    }
  }
  
  protected final void e()
  {
    if (r)
    {
      l();
      return;
    }
    super.e();
  }
  
  protected final void f()
  {
    if (r)
    {
      l();
      return;
    }
    super.f();
  }
  
  public final void g()
  {
    n.b(a.d(), false, false);
    s = Long.valueOf(SystemClock.elapsedRealtime());
  }
}

/* Location:
 * Qualified Name:     aft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */