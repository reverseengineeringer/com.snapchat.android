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

public final class aeu
  extends aey
{
  boolean a;
  private final Context b;
  private final awn c;
  private final afv d;
  private FrameLayout e;
  private FitWidthViewGroup f;
  private ImageView g;
  private aww h = new aww()
  {
    public final void a(awm paramAnonymousawm, awv paramAnonymousawv)
    {
      if (j != null) {
        j.b();
      }
      a = true;
    }
  };
  
  public aeu(Context paramContext)
  {
    this(paramContext, new awn(paramContext), new afv());
  }
  
  private aeu(Context paramContext, awn paramawn, afv paramafv)
  {
    b = paramContext;
    c = paramawn;
    d = paramafv;
  }
  
  public final aji a(View paramView, aeb paramaeb, @chc List<View> paramList)
  {
    if (f != null)
    {
      paramList = aws.a(f, paramList);
      afv.a(paramaeb, 0, 0, paramList.getWidth(), paramList.getHeight());
      paramView = new akh.a();
      mShouldHideSystemUi = true;
      paramView = paramView.a();
      akf.a locala = new akf.a();
      mSnapType = Mediabryo.SnapType.DISCOVER;
      locala = (akf.a)locala;
      mShouldEnableVisualFilters = false;
      locala = (akf.a)locala;
      mRawImageBitmap = paramList;
      locala = (akf.a)locala;
      mWidth = paramList.getWidth();
      locala = (akf.a)locala;
      mHeight = paramList.getHeight();
      paramList = (akf.a)locala;
      mMediaExtras = paramaeb;
      paramaeb = (akf.a)paramList;
      mPreviewConfiguration = paramView;
      return ((akf.a)paramaeb).c();
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
    switch (aeu.2.a[i.ordinal()])
    {
    default: 
      f.setGravity(1);
    }
    for (;;)
    {
      f.addView(g);
      g.setAdjustViewBounds(true);
      paramDSnapPage = c + a;
      paramDSnapPanel = new awv.a();
      mImageView = g;
      paramDSnapPage = paramDSnapPanel.a(paramDSnapPage);
      mRequireExactDimensions = true;
      paramDSnapPage = paramDSnapPage.a();
      c.a(paramDSnapPage, new aww[] { h });
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
  
  public final void m_()
  {
    if ((a) && (j != null)) {
      j.b();
    }
  }
}

/* Location:
 * Qualified Name:     aeu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */