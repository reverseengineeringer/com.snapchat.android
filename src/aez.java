import android.view.View;
import android.widget.FrameLayout;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.DSnapView;
import java.util.List;

public abstract class aez
  extends aey
{
  protected View a;
  protected FrameLayout b;
  protected aey c;
  private boolean d = false;
  
  aez(aey paramaey)
  {
    c = paramaey;
  }
  
  public aji a(View paramView, aeb paramaeb, @chc List<View> paramList)
  {
    return c.a(paramView, paramaeb, paramList);
  }
  
  public final DiscoverUsageAnalytics.ViewStatus a(long paramLong)
  {
    return c.a(paramLong);
  }
  
  public final void a(@chc afq paramafq)
  {
    c.a(paramafq);
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
  
  public final boolean i()
  {
    return c.i();
  }
  
  public final long j()
  {
    return c.j();
  }
  
  public final long k()
  {
    return c.k();
  }
  
  public void m_()
  {
    c.m_();
  }
  
  public void n_()
  {
    c.n_();
  }
}

/* Location:
 * Qualified Name:     aez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */