import com.snapchat.android.Timber;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.squareup.otto.Bus;

final class xx$1
  implements qd.a
{
  xx$1(xx paramxx, CashFeedItem paramCashFeedItem, xx.a parama) {}
  
  public final void a()
  {
    Timber.b(xx.b(), "CASH-LOG: ReceivingCashManager SUCCESS RESOLVED blockers id[%s], sender[%s] amount[%s]", new Object[] { a.d(), a.mSender, a.mCashTransaction.a() });
    c.a();
    ban.a().a(new baz(a.X(), a.d()));
    b.a();
  }
  
  public final void b()
  {
    Timber.b(xx.b(), "CASH-LOG: ReceivingCashManager CANCELED RESOLVED blockers id[%s], sender[%s] amount[%s]", new Object[] { a.d(), a.mSender, a.mCashTransaction.a() });
    ban.a().a(new baz(a.X(), a.d()));
    b.b();
  }
}

/* Location:
 * Qualified Name:     xx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */