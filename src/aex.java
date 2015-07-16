import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
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

public final class aex
  extends aey
{
  @chd
  ImageView a;
  boolean b = false;
  boolean c = false;
  DSnapPage d = null;
  DiscoverUsageAnalytics.ViewStatus e = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
  private final Context f;
  private final afu g;
  private final awn h;
  private final afv i;
  @chd
  private ImageView k;
  private FitWidthViewGroup l;
  private TextureVideoView m;
  private FrameLayout n;
  private afq o;
  private boolean p = false;
  private aww q = new aww()
  {
    public final void a(awm paramAnonymousawm, awv paramAnonymousawv)
    {
      paramAnonymousawm = d;
      c = true;
      aex.a(aex.this);
    }
  };
  private aww r = new aww()
  {
    public final void a(awm paramAnonymousawm, awv paramAnonymousawv)
    {
      paramAnonymousawm = d;
      b = true;
      aex.a(aex.this);
    }
  };
  
  public aex(Context paramContext)
  {
    this(paramContext, new afu(true), new awn(paramContext), new afv());
  }
  
  private aex(Context paramContext, afu paramafu, awn paramawn, afv paramafv)
  {
    f = paramContext;
    g = paramafu;
    h = paramawn;
    i = paramafv;
  }
  
  public final aji a(View paramView, aeb paramaeb, @chc List<View> paramList)
  {
    paramView = null;
    Bitmap localBitmap = null;
    if (g.c != null)
    {
      if (k == null) {
        break label336;
      }
      paramView = aws.a(k, paramList);
    }
    for (;;)
    {
      if (a != null) {
        localBitmap = aws.a(a, paramList);
      }
      paramList = new akh.a();
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
      afv.a(paramaeb, localObject[0], localObject[1], j, i1);
      j = g.j;
      k = g.k;
      double d1 = awd.a(g.h);
      g.b();
      localObject = (aku.a)new aku.a().b(g.c);
      mTimerValueOrDuration = d1;
      localObject = (aku.a)localObject;
      mSnapType = Mediabryo.SnapType.DISCOVER;
      localObject = (aku.a)localObject;
      mShouldEnableVisualFilters = false;
      localObject = (aku.a)localObject;
      mOverlayBitmap = paramView;
      paramView = (aku.a)localObject;
      mMediaExtras = paramaeb;
      paramView = (aku.a)paramView;
      mFirstFrameBitmap = localBitmap;
      mWidth = awf.a(f);
      paramView = (aku.a)paramView;
      mHeight = awf.c(f);
      paramView = (aku.a)paramView;
      mPreviewConfiguration = paramList;
      paramView = ((aku.a)paramView).c();
      return paramView;
      label336:
      if (!paramList.isEmpty()) {
        paramView = aws.a((View)paramList.get(0), null);
      } else {
        paramView = null;
      }
    }
  }
  
  public final DiscoverUsageAnalytics.ViewStatus a(long paramLong)
  {
    return e;
  }
  
  public final void a(@chc final afq paramafq)
  {
    o = paramafq;
    g.e = new afq()
    {
      public final void a(String paramAnonymousString)
      {
        e = DiscoverUsageAnalytics.ViewStatus.ERROR;
        paramafq.a(paramAnonymousString);
      }
      
      public final void b()
      {
        DSnapPage localDSnapPage = d;
        e = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
        aex.a(aex.this);
        if (a != null) {
          a.setVisibility(8);
        }
      }
      
      public final void p_()
      {
        e = DiscoverUsageAnalytics.ViewStatus.COMPLETED;
        paramafq.p_();
      }
    };
  }
  
  public final void a(@chc DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    d = paramDSnapPage;
    paramDSnapPage = c + a;
    g.c = paramDSnapPage;
  }
  
  public final boolean a(DSnapView paramDSnapView, @chc DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
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
    switch (aex.4.a[i.ordinal()])
    {
    default: 
      l.setGravity(1);
      switch (aex.4.b[h.ordinal()])
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
          b = true;
          paramDSnapView = null;
          label233:
          a = paramDSnapView;
          if (a != null) {
            l.addView(a);
          }
          localObject2 = c;
          if ((localObject2 == null) || (!d.isMediaDocking())) {
            break label548;
          }
          c = false;
          paramDSnapView = new FitWidthImageView(f);
          paramDSnapView.setAdjustViewBounds(true);
          paramDSnapPage = c + (String)localObject2;
          paramDSnapPanel = new awv.a();
          mImageView = paramDSnapView;
          paramDSnapPage = paramDSnapPanel.a(paramDSnapPage);
          mRequireExactDimensions = true;
          paramDSnapPage = paramDSnapPage.a();
          h.a(paramDSnapPage, new aww[] { q });
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
      awv.a locala = new awv.a();
      mImageView = paramDSnapView;
      localObject2 = locala.a((String)localObject2);
      mRequireExactDimensions = true;
      localObject2 = ((awv.a)localObject2).a();
      b = false;
      h.a((awv)localObject2, new aww[] { r });
      break label233;
      label548:
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
  
  public final long j()
  {
    return m.getDuration();
  }
  
  public final long k()
  {
    afu localafu = g;
    if (h < 0) {
      return -1L;
    }
    long l2 = b.getCurrentPosition();
    long l1 = l2;
    if (l2 >= h) {
      l1 = 0L;
    }
    int j = i;
    return l1 + h * j;
  }
  
  public final void m_()
  {
    p = false;
    g.a();
  }
  
  public final void n_()
  {
    g.b();
    if (a != null) {
      a.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     aex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */