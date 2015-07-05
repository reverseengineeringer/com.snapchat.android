import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import java.util.List;

final class ya$6
  implements qd.a
{
  ya$6(ya paramya, CashFeedItem paramCashFeedItem, List paramList, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY SENT cash id[%s] successfully", new Object[] { a.d() });
    AnalyticsEvents.m(a.mCashTransaction.a());
    mz.a(a);
    if (b.isEmpty())
    {
      ya.a(c);
      return;
    }
    String str = a.mCashTransaction.mSecurityCode;
    if (!TextUtils.isEmpty(str)) {
      b.get(0)).mCashTransaction.mSecurityCode = str;
    }
    d.a(c, b);
  }
  
  public final void b()
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY FAILED to SEND cash id[%s]", new Object[] { a.d() });
    a.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
    ya.a(c);
  }
}

/* Location:
 * Qualified Name:     ya.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */