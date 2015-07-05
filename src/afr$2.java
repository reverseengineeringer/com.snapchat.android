import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;

final class afr$2
  implements View.OnClickListener
{
  afr$2(afr paramafr, CashFeedItem paramCashFeedItem) {}
  
  public final void onClick(View paramView)
  {
    AnalyticsEvents.p(a.mCashTransaction.a());
    afr.a(b).d();
    b.a.a(a, new xx.a()
    {
      public final void a()
      {
        afr.a(b).i();
      }
      
      public final void b()
      {
        afr.a(b).i();
      }
    });
  }
}

/* Location:
 * Qualified Name:     afr.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */