import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;

public final class alk
  implements vr
{
  private final vq mConversationFeedItemProvider;
  private final List<vp> mConversations = new ArrayList();
  private final Provider<akp> mUserProvider;
  
  public alk(vq paramvq, Provider<akp> paramProvider)
  {
    mConversationFeedItemProvider = paramvq;
    mUserProvider = paramProvider;
    c();
  }
  
  public final List<vp> a()
  {
    return mConversations;
  }
  
  public final void b() {}
  
  public final void c()
  {
    mConversations.clear();
    mConversations.addAll(mConversationFeedItemProvider.a());
    Iterator localIterator = ((akp)mUserProvider.get()).l().iterator();
    label115:
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (zi.b(localFriend.l()) != null) {}
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          break label115;
        }
        mConversations.add(new ChatConversation(akr.l(), localFriend.l(), true));
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     alk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */