import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversation.SequenceNumberState;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

final class yq$2
  implements LoadConversationPageTask.a
{
  yq$2(yq paramyq, ChatConversation paramChatConversation) {}
  
  public final void a(boolean paramBoolean)
  {
    List localList;
    if (!paramBoolean)
    {
      a.mSequenceNumberState = ChatConversation.SequenceNumberState.NOT_UPDATED;
      yq localyq = b;
      ChatConversation localChatConversation = a;
      localList = (List)a.get(localChatConversation);
      if (localList != null)
      {
        try
        {
          if (localList.isEmpty()) {
            break label154;
          }
          Object localObject2 = new ArrayList(localList);
          localList.clear();
          localObject2 = ((List)localObject2).iterator();
          while (((Iterator)localObject2).hasNext()) {
            localyq.a(localChatConversation, (bhf)((Iterator)localObject2).next(), false);
          }
          c.a(localChatConversation, false);
        }
        finally {}
        ban.a().a(new ben());
        ban.a().a(new baz(mId));
      }
    }
    label154:
  }
}

/* Location:
 * Qualified Name:     yq.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */