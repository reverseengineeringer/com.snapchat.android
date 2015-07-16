import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

final class ayo$2
  implements SecureChatService.SecureChatWriteCompletedCallback
{
  ayo$2(ayo paramayo, bjp parambjp) {}
  
  public final void a(boolean paramBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramStatus, String paramString)
  {
    if (paramBoolean)
    {
      new StringBuilder("CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: ").append(val$pingMessage.k());
      paramStatus = this$0;
      paramString = val$pingMessage.k();
      mPingIds.add(paramString);
      mScheduledExecutorService.schedule(new ayo.3(paramStatus, paramString), mTimeoutMillis, TimeUnit.MILLISECONDS);
    }
    do
    {
      return;
      new StringBuilder("CHAT-LOG: FAILED SENDING PING ").append(val$pingMessage.k()).append("with reason: ").append(paramString);
    } while (paramStatus != SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_MESSAGE_QUEUE_FULL);
    this$0.mInterface.f();
  }
}

/* Location:
 * Qualified Name:     ayo.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */