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
import com.snapchat.android.Timber;
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
import com.snapchat.android.discover.ui.fragment.EditionViewerPager.SwipeToExitMethod;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;
import java.util.Locale;
import java.util.Map;

public final class aeh
{
  private static final aeh i = new aeh();
  protected OpenChannelAnimationView a;
  private final Context b;
  private final Bus c;
  private final aby d;
  private final adf e;
  private final abq f;
  private final acw g;
  private EditionViewerFragment h = null;
  
  private aeh()
  {
    this(SnapchatApplication.b(), ban.a(), aby.a(), adf.a(), abq.a(), acw.a());
  }
  
  private aeh(Context paramContext, Bus paramBus, aby paramaby, adf paramadf, abq paramabq, acw paramacw)
  {
    b = paramContext;
    c = paramBus;
    d = paramaby;
    e = paramadf;
    f = paramabq;
    g = paramacw;
    c.c(this);
  }
  
  public static aeh a()
  {
    return i;
  }
  
  private boolean a(@cgb ChannelView paramChannelView, @cgb OpenChannelAnimationView paramOpenChannelAnimationView, @cgb OpenChannelAnimationView.a parama, boolean paramBoolean)
  {
    if ((d()) || (e()))
    {
      Timber.a("EditionViewerLauncher", "Channel is already open.", new Object[0]);
      return true;
    }
    a = paramOpenChannelAnimationView;
    paramOpenChannelAnimationView = paramChannelView.getChannelPage();
    int j;
    label74:
    long l;
    if (paramBoolean)
    {
      if ((k) && (e != null) && (j > 0))
      {
        j = 1;
        if (j == 0) {
          break label705;
        }
      }
    }
    else
    {
      j = 1;
      Timber.a("EditionViewerLauncher", "Attempt to open %s - intromedia loaded: %b, ready: %b, enabled: %b, num snaps: %d, current edition: %s", new Object[] { b, Boolean.valueOf(paramOpenChannelAnimationView.e()), Boolean.valueOf(paramChannelView.b()), Boolean.valueOf(k), Integer.valueOf(j), e });
      if ((!paramChannelView.b()) || (j == 0)) {
        break label729;
      }
      e.a(b, System.currentTimeMillis());
      c.a(new bdg(false));
      a.setVisibility(0);
      localObject1 = a;
      c = true;
      b = paramChannelView;
      a = a;
      a.setAlpha(1.0F);
      a.setVisibility(0);
      a.setImageDrawable(new aqd(b.getFillColor()));
      localObject2 = new Rect();
      Object localObject3 = new Point();
      if (b.getGlobalVisibleRect((Rect)localObject2, (Point)localObject3))
      {
        Point localPoint = new Point(avh.a(((OpenChannelAnimationView)localObject1).getContext()), avh.b(((OpenChannelAnimationView)localObject1).getContext()));
        ViewParent localViewParent = a.getParent();
        if ((localViewParent instanceof ChannelView))
        {
          ((ChannelView)localViewParent).removeView(a);
          ((OpenChannelAnimationView)localObject1).addView(a, ((Rect)localObject2).width(), ((Rect)localObject2).height());
          a.setX(x);
          a.setY(y);
          j = ((Rect)localObject2).centerX();
          int k = ((Rect)localObject2).centerY();
          float f1 = OpenChannelAnimationView.a(Math.max(x - j, j), Math.max(y - k, k)) * 1.1F / (((Rect)localObject2).width() / 2);
          localObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(0), Integer.valueOf(-16777216) });
          ((ValueAnimator)localObject2).addUpdateListener(new OpenChannelAnimationView.1((OpenChannelAnimationView)localObject1));
          localObject3 = new AnimatorSet();
          ((AnimatorSet)localObject3).play(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_X, new float[] { 1.0F, f1 }).setDuration(150L)).with(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_Y, new float[] { 1.0F, f1 }).setDuration(150L)).with((Animator)localObject2);
          ((AnimatorSet)localObject3).setInterpolator(new DecelerateInterpolator());
          ((AnimatorSet)localObject3).addListener(new OpenChannelAnimationView.2((OpenChannelAnimationView)localObject1, parama, paramChannelView));
          ((AnimatorSet)localObject3).start();
        }
      }
      f.a(paramOpenChannelAnimationView);
      parama = g;
      localObject1 = b;
      paramChannelView = d;
      l = System.currentTimeMillis();
      if (a.containsKey(localObject1)) {
        break label711;
      }
    }
    label705:
    label711:
    for (paramChannelView = new acx((String)localObject1, paramChannelView);; paramChannelView = (acx)a.get(localObject1))
    {
      paramChannelView.a(new cgg(l).F_());
      a.put(localObject1, paramChannelView);
      return true;
      j = 0;
      break;
      j = 0;
      break label74;
    }
    label729:
    if (!paramChannelView.b())
    {
      paramChannelView.setProgressBarVisibility(true);
      d.a(paramOpenChannelAnimationView, null);
      f.a(paramOpenChannelAnimationView);
      return false;
    }
    paramChannelView = paramOpenChannelAnimationView.n();
    parama = paramOpenChannelAnimationView.k();
    Object localObject1 = paramOpenChannelAnimationView.l();
    Object localObject2 = paramOpenChannelAnimationView.m();
    if ((e == null) || (!k))
    {
      AlertDialogUtils.a(2131493128, b);
      paramChannelView = MediaState.SUCCESS;
    }
    for (;;)
    {
      if (paramChannelView.isError())
      {
        parama = f;
        paramOpenChannelAnimationView = b;
        EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_MEDIA_ERROR").a("publisher_name", paramOpenChannelAnimationView).a("type", paramChannelView.toString().toLowerCase(Locale.ENGLISH)).a("reachability", a.f()).a(false);
      }
      return false;
      if ((paramChannelView == MediaState.DISK_FULL_ERROR) || (parama == MediaState.DISK_FULL_ERROR) || (localObject1 == MediaState.DISK_FULL_ERROR) || (localObject2 == MediaState.DISK_FULL_ERROR))
      {
        paramChannelView = b.getResources();
        AlertDialogUtils.b(b, paramChannelView.getString(2131493119), paramChannelView.getString(2131493120));
        paramChannelView = MediaState.DISK_FULL_ERROR;
      }
      else if ((paramChannelView == MediaState.NETWORK_ERROR) || (parama == MediaState.NETWORK_ERROR) || (localObject1 == MediaState.NETWORK_ERROR) || (localObject2 == MediaState.NETWORK_ERROR))
      {
        AlertDialogUtils.a(2131493124, b);
        paramChannelView = MediaState.NETWORK_ERROR;
      }
      else
      {
        if ((paramChannelView != MediaState.GENERIC_ERROR) && (parama != MediaState.GENERIC_ERROR) && (localObject1 != MediaState.GENERIC_ERROR) && (localObject2 != MediaState.GENERIC_ERROR)) {
          break;
        }
        AlertDialogUtils.a(2131493123, b);
        paramChannelView = MediaState.GENERIC_ERROR;
      }
    }
  }
  
  public final boolean a(@cgb ChannelView paramChannelView, @cgb OpenChannelAnimationView paramOpenChannelAnimationView, @cgb EditionOpenOrigin paramEditionOpenOrigin)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("edition_open_origin", paramEditionOpenOrigin.ordinal());
    boolean bool = a(paramChannelView, paramOpenChannelAnimationView, new aeh.a(localBundle), true);
    if (!bool) {
      c.a(new bdg(true));
    }
    return bool;
  }
  
  public final boolean a(@cgc ChannelView paramChannelView, @cgb OpenChannelAnimationView paramOpenChannelAnimationView, @cgb EditionOpenOrigin paramEditionOpenOrigin, String paramString1, @cgc String paramString2, @cgc String paramString3, boolean paramBoolean)
  {
    if (paramChannelView == null)
    {
      Timber.a("EditionViewerLauncher", "Didn't open specific edition %s. Publisher %s not available.", new Object[] { paramString2, paramString1 });
      c.a(new bdg(true));
      return false;
    }
    ChannelPage localChannelPage = paramChannelView.getChannelPage();
    if (localChannelPage == null)
    {
      Timber.a("EditionViewerLauncher", "Didn't open specific edition %s. Channel page was null for %s", new Object[] { paramString2, paramString1 });
      c.a(new bdg(true));
      return false;
    }
    if (paramString2 != null) {}
    while (paramString2 == null)
    {
      c.a(new bdg(true));
      return false;
      paramString2 = e;
    }
    paramString1 = new Bundle();
    if (!TextUtils.equals(paramString2, e)) {
      paramString1.putBoolean("archived_edition", true);
    }
    if (paramString3 != null) {
      paramString1.putString("open_to_dsnap_id", paramString3);
    }
    for (;;)
    {
      paramString1.putString("edition_id", paramString2);
      paramString1.putBoolean("open_to_longform", paramBoolean);
      paramString1.putInt("edition_open_origin", paramEditionOpenOrigin.ordinal());
      return a(paramChannelView, paramOpenChannelAnimationView, new aeh.a(paramString1), false);
      paramString1.putBoolean("open_to_start", true);
    }
  }
  
  public final boolean b()
  {
    return (a != null) && (a.c);
  }
  
  public final void c()
  {
    Object localObject;
    if (d())
    {
      if (a != null)
      {
        localObject = a;
        ((OpenChannelAnimationView)localObject).setBackgroundColor(0);
        ((ViewGroup)a.getParent()).removeView(a);
        a.setY(0.0F);
        a.setX(0.0F);
        b.addView(a, 0);
        b.a = a;
        a.setAlpha(0.0F);
        a.setVisibility(4);
      }
      localObject = h;
      if (a != null) {
        break label156;
      }
      Timber.f("EditionViewerFragment", "channel page or pager was null when logging app background", new Object[0]);
    }
    for (;;)
    {
      h = null;
      c.a(new bdg(true));
      c.a(new bdt(true));
      return;
      label156:
      ((EditionViewerFragment)localObject).b(EditionViewerPager.SwipeToExitMethod.ENTER_BACKGROUND);
    }
  }
  
  public final boolean d()
  {
    return h != null;
  }
  
  public final boolean e()
  {
    return (a != null) && (a.c);
  }
  
  @boh
  public final void onEditionClose(aew paramaew)
  {
    h = null;
    c.a(new bel(TitleBarManager.Visibility.VISIBLE));
    c.a(new baw(1));
    c.a(new bdg(true));
    if (a != null)
    {
      paramaew = a;
      OpenChannelAnimationView.a local1 = new OpenChannelAnimationView.a()
      {
        public final void a(ChannelView paramAnonymousChannelView)
        {
          a.postDelayed(new Runnable()
          {
            public final void run()
            {
              aeh.a(aeh.this).a(new bdt(true));
              aeh.a(aeh.this).a(new bap(CameraDisplayState.SHOW));
            }
          }, 300L);
          a.setVisibility(8);
          a = null;
        }
      };
      Object localObject = new Point();
      if (b.getGlobalVisibleRect(new Rect(), (Point)localObject))
      {
        a.setX(x);
        a.setY(y);
        localObject = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(-16777216), Integer.valueOf(0) });
        ((ValueAnimator)localObject).addUpdateListener(new OpenChannelAnimationView.3(paramaew));
        AnimatorSet localAnimatorSet = new AnimatorSet();
        localAnimatorSet.play(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_X, new float[] { 1.0F }).setDuration(150L)).with(ObjectAnimator.ofFloat(a, OpenChannelAnimationView.SCALE_Y, new float[] { 1.0F }).setDuration(150L)).with((Animator)localObject);
        localAnimatorSet.setInterpolator(new AccelerateInterpolator());
        localAnimatorSet.addListener(new OpenChannelAnimationView.4(paramaew, local1));
        localAnimatorSet.start();
      }
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
      aeh.a(aeh.this, b);
    }
  }
}

/* Location:
 * Qualified Name:     aeh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */