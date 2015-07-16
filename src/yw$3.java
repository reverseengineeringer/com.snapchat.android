import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.squareup.otto.Bus;

final class yw$3
  implements qt.a
{
  yw$3(yw paramyw, CashFeedItem paramCashFeedItem, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    a.d();
    b.a(a, FeedIconChangeType.SENT);
    bbo.a().a(new bca(b.mId));
    AnalyticsEvents.l(a.mCashTransaction.a());
    nq localnq = c.b;
    nq.a(a);
  }
  
  public final void b()
  {
    a.d();
    b.a(a, FeedIconChangeType.FAILED_TO_SEND);
    bbo.a().a(new bca(b.mId));
  }
}

/* Location:
 * Qualified Name:     yw.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */