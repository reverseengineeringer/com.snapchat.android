import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;

final class ya$3
  implements qd.a
{
  ya$3(ya paramya, CashFeedItem paramCashFeedItem, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager INITIATED cash id[%s] successfully", new Object[] { a.d() });
    ya.a(b);
    AnalyticsEvents.m(a.mCashTransaction.a());
    mz.a(a);
  }
  
  public final void b()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED to INITIATE cash id[%s]", new Object[] { a.d() });
    ya.a(b);
  }
}

/* Location:
 * Qualified Name:     ya.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */