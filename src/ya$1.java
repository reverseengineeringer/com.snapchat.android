import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.CashFeedItem;

final class ya$1
  implements qd.a
{
  ya$1(ya paramya, CashFeedItem paramCashFeedItem, ya.a parama) {}
  
  public final void a()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRMED cash id[%s]", new Object[] { a.d() });
    b.a();
  }
  
  public final void b()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRM CANCELED id[%s]", new Object[] { a.d() });
    b.b();
  }
}

/* Location:
 * Qualified Name:     ya.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */