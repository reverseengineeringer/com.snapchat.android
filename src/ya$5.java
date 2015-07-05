import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;

final class ya$5
  implements qd.a
{
  ya$5(ya paramya, CashFeedItem paramCashFeedItem, ya.b paramb, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RE-INITIATED cash id[%s] successfully", new Object[] { a.d() });
    b.a();
    ya.a(c);
  }
  
  public final void b()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED to RE-INITIATE cash id[%s]", new Object[] { a.d() });
    b.b();
    ya.a(c);
  }
}

/* Location:
 * Qualified Name:     ya.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */