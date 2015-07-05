import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;

final class ya$4
  implements qd.a
{
  ya$4(ya paramya, CashFeedItem paramCashFeedItem, ya.b paramb, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FETCHED transaction and resolved blockers id[%s]", new Object[] { a.d() });
    AnalyticsEvents.m(a.mCashTransaction.a());
    mz.a(a);
    b.a();
    ya.a(c);
  }
  
  public final void b()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FAILED to fetch transaction and/or resolve blockers id[%s]", new Object[] { a.d() });
    b.b();
    ya.a(c);
  }
}

/* Location:
 * Qualified Name:     ya.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */