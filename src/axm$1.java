import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import java.util.concurrent.ConcurrentHashMap;

public final class axm$1
  implements Runnable
{
  public axm$1(axm paramaxm, String paramString) {}
  
  public final void run()
  {
    Object localObject = this$0;
    String str = val$messageId;
    localObject = (SecureChatService.SecureChatWriteCompletedCallback)mMessageCallbacksPendingAcks.remove(str);
    if (localObject != null) {
      ((SecureChatService.SecureChatWriteCompletedCallback)localObject).a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_TIMEOUT_ERROR, "Message timed out");
    }
  }
}

/* Location:
 * Qualified Name:     axm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */