import com.snapchat.android.api2.chat.LoadConversationPageTask;
import com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus;
import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class td
{
  private static final td INSTANCE = new td();
  @bwo
  private final Set<String> mRunningLoadConversationPageTasks = Collections.synchronizedSet(new HashSet());
  
  public static td a()
  {
    return INSTANCE;
  }
  
  public static void a(@cgb String paramString, @cgc LoadConversationPageTask.a parama)
  {
    new LoadConversationPageTask(paramString, null, parama).f();
  }
  
  public static void b(@cgb String paramString, LoadConversationPageTask.a parama)
  {
    new LoadConversationPageTask(paramString, null, parama).i();
  }
  
  public final LoadConversationPageTask.TaskStatus a(@cgb final String paramString, boolean paramBoolean)
  {
    ChatConversation localChatConversation = ym.a(paramString);
    synchronized (mRunningLoadConversationPageTasks)
    {
      if (mRunningLoadConversationPageTasks.contains(paramString))
      {
        paramString = LoadConversationPageTask.TaskStatus.RUNNING;
        return paramString;
      }
      String str = null;
      localObject = str;
      if (localChatConversation != null)
      {
        localObject = str;
        if (paramBoolean)
        {
          str = mChatsIterToken;
          localObject = str;
          if (str == null)
          {
            paramString = LoadConversationPageTask.TaskStatus.EMPTY_RESPONSE_REACHED;
            return paramString;
          }
        }
      }
    }
    Object localObject = new LoadConversationPageTask(paramString, (String)localObject, new LoadConversationPageTask.a()
    {
      public final void a(boolean paramAnonymousBoolean)
      {
        td.a(td.this).remove(paramString);
      }
    });
    mRunningLoadConversationPageTasks.add(paramString);
    ((LoadConversationPageTask)localObject).f();
    return LoadConversationPageTask.TaskStatus.RUNNING;
  }
}

/* Location:
 * Qualified Name:     td
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */