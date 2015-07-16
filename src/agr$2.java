import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;

final class agr$2
  implements View.OnClickListener
{
  agr$2(agr paramagr, CashFeedItem paramCashFeedItem) {}
  
  public final void onClick(View paramView)
  {
    AnalyticsEvents.o(a.mCashTransaction.a());
    agr.a(b).d();
    b.a.a(a, new yt.a()
    {
      public final void a()
      {
        agr.a(b).i();
      }
      
      public final void b()
      {
        agr.a(b).i();
      }
    });
  }
}

/* Location:
 * Qualified Name:     agr.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */