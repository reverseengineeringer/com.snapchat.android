import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;

final class adx$1
  implements aeq
{
  adx$1(adx paramadx, aeq paramaeq) {}
  
  public final void a(String paramString)
  {
    b.e = DiscoverUsageAnalytics.ViewStatus.ERROR;
    a.a(paramString);
  }
  
  public final void b()
  {
    Timber.a("DSnapItemTextureVideoViewAdapter", "[%s] onMediaDisplayed called for media player.", new Object[] { b.d });
    adx.a(b);
    if (b.a != null) {
      b.a.setVisibility(8);
    }
  }
  
  public final void r_()
  {
    b.e = DiscoverUsageAnalytics.ViewStatus.COMPLETED;
    a.r_();
  }
}

/* Location:
 * Qualified Name:     adx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */