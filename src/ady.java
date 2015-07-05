import android.view.View;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.DSnapView;
import java.util.List;

@avl
public abstract class ady
{
  protected aeq j;
  
  @cgc
  public abstract aim a(View paramView, adb paramadb, List<View> paramList);
  
  public abstract DiscoverUsageAnalytics.ViewStatus a(long paramLong);
  
  public void a(int paramInt) {}
  
  public void a(@cgb aeq paramaeq)
  {
    j = paramaeq;
  }
  
  public abstract void a(DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel);
  
  public abstract boolean a(DSnapView paramDSnapView, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel);
  
  public abstract void c();
  
  public abstract View d();
  
  public abstract DSnapPanel.MediaType e();
  
  public void f() {}
  
  public boolean h()
  {
    return false;
  }
  
  public void o_()
  {
    if (j != null) {
      j.b();
    }
  }
  
  public void p_() {}
}

/* Location:
 * Qualified Name:     ady
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */