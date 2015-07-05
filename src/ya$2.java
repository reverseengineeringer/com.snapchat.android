import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;

final class ya$2
  implements qd.a
{
  ya$2(ya paramya, CashFeedItem paramCashFeedItem, ChatConversation paramChatConversation, ya.b paramb) {}
  
  public final void a()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager PRE-INITIATED cash id[%s]", new Object[] { a.d() });
    a.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
    b.a(a);
    b.u();
    yn.a().a(b, false);
    b.e(false);
    c.a();
    d.a(b, a);
  }
  
  public final void b()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SEND CANCELED id[%s]", new Object[] { a.d() });
    c.b();
    ya.a(b);
  }
}

/* Location:
 * Qualified Name:     ya.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */