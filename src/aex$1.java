import android.widget.ImageView;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;

final class aex$1
  implements afq
{
  aex$1(aex paramaex, afq paramafq) {}
  
  public final void a(String paramString)
  {
    b.e = DiscoverUsageAnalytics.ViewStatus.ERROR;
    a.a(paramString);
  }
  
  public final void b()
  {
    DSnapPage localDSnapPage = b.d;
    b.e = DiscoverUsageAnalytics.ViewStatus.INCOMPLETE;
    aex.a(b);
    if (b.a != null) {
      b.a.setVisibility(8);
    }
  }
  
  public final void p_()
  {
    b.e = DiscoverUsageAnalytics.ViewStatus.COMPLETED;
    a.p_();
  }
}

/* Location:
 * Qualified Name:     aex.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */