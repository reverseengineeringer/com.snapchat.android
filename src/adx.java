import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.Docking;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.model.Mediabryo.a;
import com.snapchat.android.ui.FitWidthImageView;
import com.snapchat.android.ui.FitWidthViewGroup;
import com.snapchat.android.ui.TextureVideoView;
import java.util.List;

public final class adx
  extends ady
{
  @cgc
  ImageView a;
  boolean b = false;
  boolean c = false;
  DSnapPage d = null;
  DiscoverUsageAnalytics.ViewStatus e = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
  private final Context f;
  private final aeu g;
  private final avp h;
  private final aev i;
  @cgc
  private ImageView k;
  private FitWidthViewGroup l;
  private TextureVideoView m;
  private FrameLayout n;
  private aeq o;
  private boolean p = false;
  private avy q = new avy()
  {
    public final void a(avo paramAnonymousavo, avx paramAnonymousavx)
    {
      Timber.a("DSnapItemTextureVideoViewAdapter", "[%s] Overlay loaded.", new Object[] { d });
      c = true;
      adx.a(adx.this);
    }
  };
  private avy r = new avy()
  {
    public final void a(avo paramAnonymousavo, avx paramAnonymousavx)
    {
      Timber.a("DSnapItemTextureVideoViewAdapter", "[%s] Video first frame loaded.", new Object[] { d });
      b = true;
      adx.a(adx.this);
    }
  };
  
  public adx(Context paramContext)
  {
    this(paramContext, new aeu(true), new avp(paramContext), new aev());
  }
  
  private adx(Context paramContext, aeu paramaeu, avp paramavp, aev paramaev)
  {
    f = paramContext;
    g = paramaeu;
    h = paramavp;
    i = paramaev;
  }
  
  public final aim a(View paramView, adb paramadb, @cgb List<View> paramList)
  {
    paramView = null;
    Bitmap localBitmap = null;
    if (g.c != null)
    {
      if (k == null) {
        break label336;
      }
      paramView = avu.a(k, paramList);
    }
    for (;;)
    {
      if (a != null) {
        localBitmap = avu.a(a, paramList);
      }
      paramList = new ajl.a();
      mGravity = l.getGravity();
      int j = l.getMeasuredWidth();
      int i1 = l.getMeasuredHeight();
      mWidth = j;
      mHeight = i1;
      mShouldHideSystemUi = true;
      paramList = paramList.a();
      j = m.getWidth();
      i1 = m.getHeight();
      Object localObject = new int[2];
      m.getLocationOnScreen((int[])localObject);
      aev.a(paramadb, localObject[0], localObject[1], j, i1);
      j = g.h;
      k = g.i;
      double d1 = avf.a(g.g);
      g.b();
      localObject = (ajm.a)new ajm.a().b(g.c);
      mTimerValueOrDuration = d1;
      localObject = (ajm.a)localObject;
      mSnapType = Mediabryo.SnapType.DISCOVER;
      localObject = (ajm.a)localObject;
      mShouldEnableVisualFilters = false;
      localObject = (ajm.a)localObject;
      mOverlayBitmap = paramView;
      paramView = (ajm.a)localObject;
      mMediaExtras = paramadb;
      paramView = (ajm.a)paramView;
      mFirstFrameBitmap = localBitmap;
      mWidth = avh.a(f);
      paramView = (ajm.a)paramView;
      mHeight = avh.c(f);
      paramView = (ajm.a)paramView;
      mPreviewConfiguration = paramList;
      paramView = ((ajm.a)paramView).c();
      return paramView;
      label336:
      if (!paramList.isEmpty()) {
        paramView = avu.a((View)paramList.get(0), null);
      } else {
        paramView = null;
      }
    }
  }
  
  public final DiscoverUsageAnalytics.ViewStatus a(long paramLong)
  {
    return e;
  }
  
  public final void a(@cgb final aeq paramaeq)
  {
    o = paramaeq;
    g.e = new aeq()
    {
      public final void a(String paramAnonymousString)
      {
        e = DiscoverUsageAnalytics.ViewStatus.ERROR;
        paramaeq.a(paramAnonymousString);
      }
      
      public final void b()
      {
        Timber.a("DSnapItemTextureVideoViewAdapter", "[%s] onMediaDisplayed called for media player.", new Object[] { d });
        adx.a(adx.this);
        if (a != null) {
          a.setVisibility(8);
        }
      }
      
      public final void r_()
      {
        e = DiscoverUsageAnalytics.ViewStatus.COMPLETED;
        paramaeq.r_();
      }
    };
  }
  
  public final void a(@cgb DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    d = paramDSnapPage;
    paramDSnapPage = c + a;
    g.c = paramDSnapPage;
  }
  
  public final boolean a(DSnapView paramDSnapView, @cgb DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    Object localObject1 = null;
    d = paramDSnapPage;
    n = new FrameLayout(f);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    gravity = 16;
    n.setLayoutParams(localLayoutParams);
    l = new FitWidthViewGroup(f);
    boolean bool;
    label143:
    Object localObject2;
    switch (adx.4.a[i.ordinal()])
    {
    default: 
      l.setGravity(1);
      switch (adx.4.b[h.ordinal()])
      {
      default: 
        bool = true;
        m = new TextureVideoView(f);
        g.a(m, bool);
        paramDSnapView = c + a;
        g.c = paramDSnapView;
        l.addView(m);
        localObject2 = f;
        if (localObject2 == null)
        {
          Timber.e("DSnapItemTextureVideoViewAdapter", "[%s] No first frame video. Setting video frame loaded.", new Object[] { paramDSnapPage });
          b = true;
          paramDSnapView = null;
          label249:
          a = paramDSnapView;
          if (a != null) {
            l.addView(a);
          }
          localObject2 = c;
          if ((localObject2 == null) || (!d.isMediaDocking())) {
            break label564;
          }
          c = false;
          paramDSnapView = new FitWidthImageView(f);
          paramDSnapView.setAdjustViewBounds(true);
          paramDSnapPage = c + (String)localObject2;
          paramDSnapPanel = new avx.a();
          mImageView = paramDSnapView;
          paramDSnapPage = paramDSnapPanel.a(paramDSnapPage);
          mRequireExactDimensions = true;
          paramDSnapPage = paramDSnapPage.a();
          h.a(paramDSnapPage, new avy[] { q });
        }
        break;
      }
      break;
    }
    for (;;)
    {
      k = paramDSnapView;
      if (k != null) {
        l.addView(k);
      }
      n.addView(l, localLayoutParams);
      return true;
      l.setGravity(2);
      break;
      l.setGravity(0);
      break;
      bool = true;
      break label143;
      bool = false;
      break label143;
      paramDSnapView = new FitWidthImageView(f);
      paramDSnapView.setAdjustViewBounds(true);
      localObject2 = c + (String)localObject2;
      avx.a locala = new avx.a();
      mImageView = paramDSnapView;
      localObject2 = locala.a((String)localObject2);
      mRequireExactDimensions = true;
      localObject2 = ((avx.a)localObject2).a();
      b = false;
      h.a((avx)localObject2, new avy[] { r });
      break label249;
      label564:
      Timber.a("DSnapItemTextureVideoViewAdapter", "[%s] No overlay. Setting overlay loaded.", new Object[] { paramDSnapPage });
      c = true;
      paramDSnapView = (DSnapView)localObject1;
    }
  }
  
  public final void c()
  {
    h.a(k);
    h.a(a);
  }
  
  public final View d()
  {
    return n;
  }
  
  public final DSnapPanel.MediaType e()
  {
    return DSnapPanel.MediaType.VIDEO;
  }
  
  public final void o_()
  {
    p = false;
    g.a();
  }
  
  public final void p_()
  {
    g.b();
    if (a != null) {
      a.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     adx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */