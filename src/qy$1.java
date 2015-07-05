import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.fragments.cash.CashPhoneVerificationFragment.a;

final class qy$1
  implements CashPhoneVerificationFragment.a
{
  qy$1(qy paramqy) {}
  
  public final void a()
  {
    Timber.b("PhoneNumberBlocker", "CASH-LOG: PhoneNumberBlocker VERIFICATION COMPLETE", new Object[0]);
    if (qy.a(this$0))
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
 * Qualified Name:     qy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */