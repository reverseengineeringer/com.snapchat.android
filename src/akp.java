import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;

public final class akp
  implements uv
{
  private final uu mConversationFeedItemProvider;
  private final List<ut> mConversations = new ArrayList();
  private final Provider<ajv> mUserProvider;
  
  public akp(uu paramuu, Provider<ajv> paramProvider)
  {
    mConversationFeedItemProvider = paramuu;
    mUserProvider = paramProvider;
    b();
  }
  
  public final List<ut> a()
  {
    return mConversations;
  }
  
  public final void b()
  {
    mConversations.clear();
    mConversations.addAll(mConversationFeedItemProvider.a());
    Iterator localIterator = ((ajv)mUserProvider.get()).l().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (!ym.a(localFriend)) {
        mConversations.add(new ChatConversation(ajx.l(), localFriend.h(), true));
      }
    }
  }
}

/* Location:
 * Qualified Name:     akp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */