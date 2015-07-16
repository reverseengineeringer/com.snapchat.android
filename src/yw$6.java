import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.squareup.otto.Bus;
import java.util.List;

final class yw$6
  implements qt.a
{
  yw$6(yw paramyw, CashFeedItem paramCashFeedItem, List paramList, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    a.d();
    AnalyticsEvents.l(a.mCashTransaction.a());
    Object localObject = d.b;
    nq.a(a);
    if (b.isEmpty())
    {
      c.a(a, FeedIconChangeType.SENT);
      bbo.a().a(new bca(c.mId));
      return;
    }
    localObject = a.mCashTransaction.mSecurityCode;
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      b.get(0)).mCashTransaction.mSecurityCode = ((String)localObject);
    }
    d.a(c, b);
  }
  
  public final void b()
  {
    a.d();
    a.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
    c.a(a, FeedIconChangeType.FAILED_TO_SEND);
    bbo.a().a(new bca(c.mId));
  }
}

/* Location:
 * Qualified Name:     yw.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */