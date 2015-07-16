import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.1;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.2;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.3;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.4;
import com.snapchat.android.discover.ui.OpenChannelAnimationView.a;
import com.snapchat.android.discover.ui.fragment.EditionViewerFragment;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;
import java.util.Locale;
import java.util.Map;

public final class afh
{
  private static final afh j = new afh();
  public final Bus a;
  protected OpenChannelAnimationView b;
  public EditionViewerFragment c = null;
  private final Context d;
  private final acy e;
  private final aef f;
  private final acq g;
  private final adw h;
  private final acz i;
  
  private afh()
  {
    this(SnapchatApplication.b(), bbo.a(), acy.a(), aef.a(), acq.a(), adw.a(), acz.a());
  }
  
  private afh(Context paramContext, Bus paramBus, acy paramacy, aef paramaef, acq paramacq, adw paramadw, acz paramacz)
  {
    d = paramContext;
    a = paramBus;
    e = paramacy;
    f = paramaef;
    g = paramacq;
    h = paramadw;
    i = paramacz;
    a.c(this);
  }
  
  public static afh a()
  {
    return j;
  }
  
  private boolean a(@chc ChannelView paramChannelView, @chc OpenChannelAnimationView paramOpenChannelAnimationView, @chc OpenChannelAnimationView.a parama, boolean paramBoolean, EditionOpenOrigin paramEditionOpenOrigin)
  {
    if ((d()) || (e())) {
      return true;
    }
    b = paramOpenChannelAnimationView;
    paramOpenChannelAnimationView = paramChannelView.getChannelPage();
    int k;
    label63:
    int m;
    Object localObject2;
    Object localObject3;
    label203:
    long l;
    if (paramBoolean)
    {
      if ((k) && (e != null) && (j > 0))
      {
        k = 1;
        if (k == 0) {
          break label303;
        }
      }
    }
    else
    {
      k = 1;
      localObject1 = b;
      paramOpenChannelAnimationView.e();
      paramChannelView.b();
      paramBoolean = k;
      m = j;
      localObject1 = e;
      if ((!paramChannelView.b()) || (k == 0)) {
        break label713;
      }
      f.a(b, System.currentTimeMillis());
      a.a(new beg(false));
      b.setVisibility(0);
      localObject1 = b;
      c = true;
      b = paramChannelView;
      localObject2 = new Rect();
      localObject3 = new Point();
      if (b.getGlobalVisibleRect((Rect)localObject2, (Point)localObject3)) {
        break label309;
      }
      c = false;
      g.a(paramOpenChannelAnimationView, paramEditionOpenOrigin);
      parama = h;
      paramEditionOpenOrigin = b;
      paramChannelView = d;
      l = System.currentTimeMillis();
      if (a.containsKey(paramEditionOpenOrigin)) {
        break label695;
      }
    }
    label303:
    label309:
    label695:
    for (paramChannelView = new adx(paramEditionOpenOrigin, paramChannelView);; paramChannelView = (adx)a.get(paramEditionOpenOrigin))
    {
      paramChannelView.a(new chh(l).F_());
      a.put(paramEditionOpenOrigin, paramChannelView);
      i.c();
      return true;
      k = 0;
      break;
      k = 0;
      break label63;
      a = a;
      ViewParent localViewParent = a.getParent();
      if (!(localViewParent instanceof ChannelView))
      {
        c = false;
        break label203;
      }
      a.setAlpha(1.0F);
      a.setVisibility(0);
      a.setImageDrawable(new arc(b.getFillColor()));
      ((ChannelView)localViewParent).removeView(a);
      ((OpenChannelAnimationView)localObject1).addView(a, ((Rect)localObject2).width(), ((Rect)localObject2).height());
      a.setX(x);
      a.setY(y);
      localObject3 = new Point(awf.a(((OpenChannelAnimationView)localObject1).getContext()), awf.b(((OpenChannelAnimationView)localObject1).getContext()));
      k = ((Rect)localObject2).centerX();
      m = ((Rect)localObject2).centerY();
      float f1 = OpenChannelAnimationView.a(Math.max(x - k, k), Math.max(y - m, m)) * 1.1F / (((Rect)localObject2).width() / 2);
      localObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(0), Integer.valueOf(-16777216) });
      ((ValueAnimator)localObject2).addUpdateListener(new OpenChannelAnimationView.1((OpenChannelAnimationView)localObject1));
      localObject3 = new AnimatorSet();
      ((AnimatorSet)localObject3).play(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_X, new float[] { 1.0F, f1 }).setDuration(150L)).with(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_Y, new float[] { 1.0F, f1 }).setDuration(150L)).with((Animator)localObject2);
      ((AnimatorSet)localObject3).setInterpolator(new DecelerateInterpolator());
      ((AnimatorSet)localObject3).addListener(new OpenChannelAnimationView.2((OpenChannelAnimationView)localObject1, parama, paramChannelView));
      ((AnimatorSet)localObject3).start();
      break label203;
    }
    label713:
    if (!paramChannelView.b())
    {
      paramChannelView.setProgressBarVisibility(true);
      e.a(paramOpenChannelAnimationView, null);
      g.a(paramOpenChannelAnimationView, paramEditionOpenOrigin);
      return false;
    }
    paramChannelView = paramOpenChannelAnimationView.n();
    parama = paramOpenChannelAnimationView.k();
    paramEditionOpenOrigin = paramOpenChannelAnimationView.l();
    Object localObject1 = paramOpenChannelAnimationView.m();
    if ((e == null) || (!k))
    {
      AlertDialogUtils.a(2131493128, d);
      paramChannelView = MediaState.SUCCESS;
    }
    for (;;)
    {
      if (paramChannelView.isError())
      {
        parama = g;
        paramOpenChannelAnimationView = b;
        EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_MEDIA_ERROR").a("publisher_name", paramOpenChannelAnimationView).a("type", paramChannelView.toString().toLowerCase(Locale.ENGLISH)).a("reachability", a.f()).a(false);
      }
      return false;
      if ((paramChannelView == MediaState.DISK_FULL_ERROR) || (parama == MediaState.DISK_FULL_ERROR) || (paramEditionOpenOrigin == MediaState.DISK_FULL_ERROR) || (localObject1 == MediaState.DISK_FULL_ERROR))
      {
        paramChannelView = d.getResources();
        AlertDialogUtils.b(d, paramChannelView.getString(2131493119), paramChannelView.getString(2131493120));
        paramChannelView = MediaState.DISK_FULL_ERROR;
      }
      else if ((paramChannelView == MediaState.NETWORK_ERROR) || (parama == MediaState.NETWORK_ERROR) || (paramEditionOpenOrigin == MediaState.NETWORK_ERROR) || (localObject1 == MediaState.NETWORK_ERROR))
      {
        AlertDialogUtils.a(2131493124, d);
        paramChannelView = MediaState.NETWORK_ERROR;
      }
      else
      {
        if ((paramChannelView != MediaState.GENERIC_ERROR) && (parama != MediaState.GENERIC_ERROR) && (paramEditionOpenOrigin != MediaState.GENERIC_ERROR) && (localObject1 != MediaState.GENERIC_ERROR)) {
          break;
        }
        AlertDialogUtils.a(2131493123, d);
        paramChannelView = MediaState.GENERIC_ERROR;
      }
    }
  }
  
  public final boolean a(@chc ChannelView paramChannelView, @chc OpenChannelAnimationView paramOpenChannelAnimationView, @chc EditionOpenOrigin paramEditionOpenOrigin, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("edition_open_origin", paramEditionOpenOrigin.ordinal());
    localBundle.putInt("adapter_index", paramInt);
    boolean bool = a(paramChannelView, paramOpenChannelAnimationView, new afh.a(localBundle), true, paramEditionOpenOrigin);
    if (!bool) {
      a.a(new beg(true));
    }
    return bool;
  }
  
  public final boolean a(@chd ChannelView paramChannelView, @chc OpenChannelAnimationView paramOpenChannelAnimationView, @chc EditionOpenOrigin paramEditionOpenOrigin, String paramString1, @chd String paramString2, @chd String paramString3, boolean paramBoolean)
  {
    if (paramChannelView == null)
    {
      a.a(new beg(true));
      return false;
    }
    paramString1 = paramChannelView.getChannelPage();
    if (paramString1 == null)
    {
      a.a(new beg(true));
      return false;
    }
    if (paramString2 != null) {}
    while (paramString2 == null)
    {
      a.a(new beg(true));
      return false;
      paramString2 = e;
    }
    Bundle localBundle = new Bundle();
    if (!TextUtils.equals(paramString2, e)) {
      localBundle.putBoolean("archived_edition", true);
    }
    if (paramString3 != null) {
      localBundle.putString("open_to_dsnap_id", paramString3);
    }
    for (;;)
    {
      localBundle.putString("edition_id", paramString2);
      localBundle.putBoolean("open_to_longform", paramBoolean);
      localBundle.putInt("edition_open_origin", paramEditionOpenOrigin.ordinal());
      return a(paramChannelView, paramOpenChannelAnimationView, new afh.a(localBundle), false, paramEditionOpenOrigin);
      localBundle.putBoolean("open_to_start", true);
    }
  }
  
  public final boolean b()
  {
    return (b != null) && (b.c);
  }
  
  public final void c()
  {
    if (b != null)
    {
      OpenChannelAnimationView localOpenChannelAnimationView = b;
      localOpenChannelAnimationView.setBackgroundColor(0);
      if (a != null)
      {
        ViewParent localViewParent = a.getParent();
        if (localViewParent != null) {
          ((ViewGroup)localViewParent).removeView(a);
        }
        a.setY(0.0F);
        a.setX(0.0F);
        a.setScaleX(1.0F);
        a.setScaleY(1.0F);
        a.setImageDrawable(null);
        if (b != null)
        {
          b.addView(a, 0);
          b.a = a;
        }
        a.setAlpha(0.0F);
        a.setVisibility(4);
      }
      c = false;
      d = false;
      b.setVisibility(8);
    }
    c = null;
    b = null;
    a.a(new bet(true));
    a.a(new bbq(CameraDisplayState.SHOW));
  }
  
  public final boolean d()
  {
    return c != null;
  }
  
  public final boolean e()
  {
    return (b != null) && (b.c);
  }
  
  @bpi
  public final void onAllStackedFragmentsPoppedEvent(bbm parambbm)
  {
    c();
  }
  
  @bpi
  public final void onEditionClose(final afw paramafw)
  {
    int k = 0;
    c = null;
    a.a(new bfk(TitleBarManager.Visibility.VISIBLE));
    a.a(new bbx(1));
    a.a(new beg(true));
    paramafw = b;
    OpenChannelAnimationView.a local1;
    Object localObject;
    if (paramafw != null)
    {
      local1 = new OpenChannelAnimationView.a()
      {
        public final void a(ChannelView paramAnonymousChannelView)
        {
          paramafw.postDelayed(new Runnable()
          {
            public final void run()
            {
              afh.a(afh.this).a(new bet(true));
              afh.a(afh.this).a(new bbq(CameraDisplayState.SHOW));
            }
          }, 300L);
          paramafw.setVisibility(8);
          b = null;
        }
      };
      localObject = new int[2];
      b.getLocationOnScreen((int[])localObject);
      if ((localObject[0] != 0) || (localObject[1] != 0)) {
        break label110;
      }
    }
    for (;;)
    {
      if (k == 0) {
        c();
      }
      return;
      label110:
      a.setX(localObject[0]);
      a.setY(localObject[1]);
      d = true;
      localObject = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(-16777216), Integer.valueOf(0) });
      ((ValueAnimator)localObject).addUpdateListener(new OpenChannelAnimationView.3(paramafw));
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.play(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_X, new float[] { 1.0F }).setDuration(150L)).with(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_Y, new float[] { 1.0F }).setDuration(150L)).with((Animator)localObject);
      localAnimatorSet.setInterpolator(new AccelerateInterpolator());
      localAnimatorSet.addListener(new OpenChannelAnimationView.4(paramafw, local1));
      localAnimatorSet.start();
      k = 1;
    }
  }
  
  public final class a
    implements OpenChannelAnimationView.a
  {
    private final Bundle b;
    
    a(Bundle paramBundle)
    {
      b = paramBundle;
    }
    
    public final void a(ChannelView paramChannelView)
    {
      paramChannelView = paramChannelView.getChannelPage();
      b.putParcelable(ChannelPage.a, paramChannelView);
      if (TextUtils.isEmpty(b.getString("edition_id"))) {
        b.putString("edition_id", e);
      }
      afh.a(afh.this, b);
    }
  }
}

/* Location:
 * Qualified Name:     afh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */