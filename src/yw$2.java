import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.squareup.otto.Bus;

final class yw$2
  implements qt.a
{
  yw$2(yw paramyw, CashFeedItem paramCashFeedItem, ChatConversation paramChatConversation, yw.b paramb) {}
  
  public final void a()
  {
    a.d();
    a.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
    b.a(a);
    b.a(a, FeedIconChangeType.SENDING);
    b.v();
    b.e(false);
    c.a();
    d.a(b, a);
  }
  
  public final void b()
  {
    a.d();
    c.b();
    b.a(a, FeedIconChangeType.FAILED_TO_SEND);
    bbo.a().a(new bca(b.mId));
  }
}

/* Location:
 * Qualified Name:     yw.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */