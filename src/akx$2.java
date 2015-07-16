import com.squareup.otto.Bus;
import java.util.List;

final class akx$2
  implements Runnable
{
  akx$2(akx paramakx) {}
  
  public final void run()
  {
    akx localakx = this$0;
    bhp.a();
    synchronized (mConversations)
    {
      mFeedItems.clear();
      mFeedItems.addAll(mConversations);
      mConversationsForListView.clear();
      mConversationsForListView.addAll(mConversations);
      bbo.a().a(new bce());
      ??? = akp.g();
      if (??? != null) {
        ((akp)???).e();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     akx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */