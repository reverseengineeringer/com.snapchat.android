import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.squareup.otto.Bus;

final class yw$4
  implements qt.a
{
  yw$4(yw paramyw, CashFeedItem paramCashFeedItem, yw.b paramb, ChatConversation paramChatConversation) {}
  
  public final void a()
  {
    a.d();
    AnalyticsEvents.l(a.mCashTransaction.a());
    nq localnq = d.b;
    nq.a(a);
    b.a();
    c.a(a, FeedIconChangeType.SENDING);
    bbo.a().a(new bca(c.mId));
  }
  
  public final void b()
  {
    a.d();
    b.b();
    c.a(a, FeedIconChangeType.FAILED_TO_SEND);
    bbo.a().a(new bca(c.mId));
  }
}

/* Location:
 * Qualified Name:     yw.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */