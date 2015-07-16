import com.snapchat.android.api2.chat.LoadConversationPageTask;
import com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus;
import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class tt
{
  private static final tt INSTANCE = new tt();
  @bxp
  private final Set<String> mRunningLoadConversationPageTasks = Collections.synchronizedSet(new HashSet());
  
  public static tt a()
  {
    return INSTANCE;
  }
  
  public static void a(@chc String paramString, @chd LoadConversationPageTask.a parama)
  {
    new LoadConversationPageTask(paramString, null, parama).execute();
  }
  
  public static void b(@chc String paramString, LoadConversationPageTask.a parama)
  {
    new LoadConversationPageTask(paramString, null, parama).executeSynchronously();
  }
  
  public final LoadConversationPageTask.TaskStatus a(@chc final String paramString, boolean paramBoolean)
  {
    ChatConversation localChatConversation = zi.a(paramString);
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
        tt.a(tt.this).remove(paramString);
      }
    });
    mRunningLoadConversationPageTasks.add(paramString);
    ((LoadConversationPageTask)localObject).execute();
    return LoadConversationPageTask.TaskStatus.RUNNING;
  }
}

/* Location:
 * Qualified Name:     tt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */