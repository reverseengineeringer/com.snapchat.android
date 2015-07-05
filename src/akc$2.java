import com.squareup.otto.Bus;
import java.util.List;

final class akc$2
  implements Runnable
{
  akc$2(akc paramakc) {}
  
  public final void run()
  {
    akc localakc1;
    if (azm.e())
    {
      localakc1 = this$0;
      bgp.a();
    }
    for (;;)
    {
      synchronized (mConversations)
      {
        mFeedItems.clear();
        mFeedItems.addAll(mConversations);
        ban.a().a(new bbe());
        ??? = ajv.g();
        if (??? != null) {
          ((ajv)???).e();
        }
        return;
      }
      akc localakc2 = this$0;
      bgp.a();
      mConversationsForListView.clear();
      synchronized (mConversations)
      {
        mConversationsForListView.addAll(mConversations);
        ban.a().a(new bbe());
        ??? = ajv.g();
        if (??? == null) {
          continue;
        }
        ((ajv)???).e();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     akc.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */