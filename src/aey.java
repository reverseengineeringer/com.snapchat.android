import android.view.View;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.DSnapView;
import java.util.List;

@awj
public abstract class aey
{
  protected afq j;
  
  @chd
  public abstract aji a(View paramView, aeb paramaeb, List<View> paramList);
  
  public abstract DiscoverUsageAnalytics.ViewStatus a(long paramLong);
  
  public void a(@chc afq paramafq)
  {
    j = paramafq;
  }
  
  public abstract void a(DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel);
  
  public abstract boolean a(DSnapView paramDSnapView, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel);
  
  public abstract void c();
  
  public abstract View d();
  
  public abstract DSnapPanel.MediaType e();
  
  public void f() {}
  
  public void g() {}
  
  public boolean i()
  {
    return false;
  }
  
  public long j()
  {
    return -1L;
  }
  
  public long k()
  {
    return -1L;
  }
  
  public void m_()
  {
    if (j != null) {
      j.b();
    }
  }
  
  public void n_() {}
}

/* Location:
 * Qualified Name:     aey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */