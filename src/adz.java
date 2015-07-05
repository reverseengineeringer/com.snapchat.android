import android.view.View;
import android.widget.FrameLayout;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.DSnapView;
import java.util.List;

public abstract class adz
  extends ady
{
  protected View a;
  protected FrameLayout b;
  protected ady c;
  private boolean d = false;
  
  adz(ady paramady)
  {
    c = paramady;
  }
  
  public aim a(View paramView, adb paramadb, @cgb List<View> paramList)
  {
    return c.a(paramView, paramadb, paramList);
  }
  
  public final DiscoverUsageAnalytics.ViewStatus a(long paramLong)
  {
    return c.a(paramLong);
  }
  
  public final void a(@cgb aeq paramaeq)
  {
    c.a(paramaeq);
  }
  
  public final void a(DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    c.a(paramDSnapPage, paramDSnapPanel);
  }
  
  public boolean a(DSnapView paramDSnapView, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    return c.a(paramDSnapView, paramDSnapPage, paramDSnapPanel);
  }
  
  public void c()
  {
    c.c();
  }
  
  public final View d()
  {
    if (!d)
    {
      View localView = c.d();
      b.addView(localView);
      d = true;
    }
    return a;
  }
  
  public final DSnapPanel.MediaType e()
  {
    return c.e();
  }
  
  public final boolean h()
  {
    return c.h();
  }
  
  public void o_()
  {
    c.o_();
  }
  
  public void p_()
  {
    c.p_();
  }
}

/* Location:
 * Qualified Name:     adz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */