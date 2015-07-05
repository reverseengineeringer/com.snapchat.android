import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.FitWidthImageView;
import com.snapchat.android.ui.FitWidthViewGroup;
import java.util.List;

public final class adu
  extends ady
{
  boolean a;
  private final Context b;
  private final avp c;
  private final aev d;
  private FrameLayout e;
  private FitWidthViewGroup f;
  private ImageView g;
  private avy h = new avy()
  {
    public final void a(avo paramAnonymousavo, avx paramAnonymousavx)
    {
      if (j != null) {
        j.b();
      }
      a = true;
    }
  };
  
  public adu(Context paramContext)
  {
    this(paramContext, new avp(paramContext), new aev());
  }
  
  private adu(Context paramContext, avp paramavp, aev paramaev)
  {
    b = paramContext;
    c = paramavp;
    d = paramaev;
  }
  
  public final aim a(View paramView, adb paramadb, @cgb List<View> paramList)
  {
    if (f != null)
    {
      paramList = avu.a(f, paramList);
      aev.a(paramadb, 0, 0, paramList.getWidth(), paramList.getHeight());
      paramView = new ajl.a();
      mShouldHideSystemUi = true;
      paramView = paramView.a();
      ajj.a locala = new ajj.a();
      mSnapType = Mediabryo.SnapType.DISCOVER;
      locala = (ajj.a)locala;
      mShouldEnableVisualFilters = false;
      locala = (ajj.a)locala;
      mRawImageBitmap = paramList;
      locala = (ajj.a)locala;
      mWidth = paramList.getWidth();
      locala = (ajj.a)locala;
      mHeight = paramList.getHeight();
      paramList = (ajj.a)locala;
      mMediaExtras = paramadb;
      paramadb = (ajj.a)paramList;
      mPreviewConfiguration = paramView;
      return ((ajj.a)paramadb).c();
    }
    return null;
  }
  
  public final DiscoverUsageAnalytics.ViewStatus a(long paramLong)
  {
    return DiscoverUsageAnalytics.ViewStatus.COMPLETED;
  }
  
  public final void a(DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel) {}
  
  public final boolean a(DSnapView paramDSnapView, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    e = new FrameLayout(b);
    paramDSnapView = new FrameLayout.LayoutParams(-1, -1);
    gravity = 17;
    e.setLayoutParams(paramDSnapView);
    f = new FitWidthViewGroup(b);
    g = new FitWidthImageView(b);
    switch (adu.2.a[i.ordinal()])
    {
    default: 
      f.setGravity(1);
    }
    for (;;)
    {
      f.addView(g);
      g.setAdjustViewBounds(true);
      paramDSnapPage = c + a;
      paramDSnapPanel = new avx.a();
      mImageView = g;
      paramDSnapPage = paramDSnapPanel.a(paramDSnapPage);
      mRequireExactDimensions = true;
      paramDSnapPage = paramDSnapPage.a();
      c.a(paramDSnapPage, new avy[] { h });
      e.addView(f, paramDSnapView);
      return true;
      f.setGravity(2);
      continue;
      f.setGravity(0);
    }
  }
  
  public final void c()
  {
    c.a(g);
  }
  
  public final View d()
  {
    return e;
  }
  
  public final DSnapPanel.MediaType e()
  {
    return DSnapPanel.MediaType.IMAGE;
  }
  
  public final void o_()
  {
    if ((a) && (j != null)) {
      j.b();
    }
  }
}

/* Location:
 * Qualified Name:     adu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */