import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.fragments.cash.CashPhoneVerificationFragment.a;

final class ro$1
  implements CashPhoneVerificationFragment.a
{
  ro$1(ro paramro) {}
  
  public final void a()
  {
    if (ro.a(this$0))
    {
      AnalyticsEvents.O();
      return;
    }
    this$0.b(null, false);
  }
  
  public final void b()
  {
    AnalyticsEvents.P();
    this$0.a();
  }
}

/* Location:
 * Qualified Name:     ro.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */