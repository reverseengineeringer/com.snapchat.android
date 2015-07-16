import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversation.SequenceNumberState;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

final class zm$2
  implements LoadConversationPageTask.a
{
  zm$2(zm paramzm, ChatConversation paramChatConversation) {}
  
  public final void a(boolean paramBoolean)
  {
    Object localObject2;
    if (!paramBoolean)
    {
      a.mSequenceNumberState = ChatConversation.SequenceNumberState.NOT_UPDATED;
      localObject2 = b;
      ChatConversation localChatConversation = a;
      localObject2 = (List)a.get(localChatConversation);
      if (localObject2 != null)
      {
        try
        {
          if (((List)localObject2).isEmpty()) {
            break label130;
          }
          Object localObject3 = new ArrayList((Collection)localObject2);
          ((List)localObject2).clear();
          localObject3 = ((List)localObject3).iterator();
          while (((Iterator)localObject3).hasNext()) {
            zm.a(localChatConversation, (bif)((Iterator)localObject3).next(), false);
          }
          ((ChatConversation)localObject1).r();
        }
        finally {}
        bbo.a().a(new bca(mId));
      }
    }
    label130:
  }
}

/* Location:
 * Qualified Name:     zm.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */