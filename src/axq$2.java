import com.snapchat.android.Timber;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

final class axq$2
  implements SecureChatService.SecureChatWriteCompletedCallback
{
  axq$2(axq paramaxq, bip parambip) {}
  
  public final void a(boolean paramBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramStatus, String paramString)
  {
    if (paramBoolean)
    {
      Timber.g("SecureChatSessionPinger", "CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: " + val$pingMessage.k(), new Object[0]);
      paramStatus = this$0;
      paramString = val$pingMessage.k();
      mPingIds.add(paramString);
      mScheduledExecutorService.schedule(new axq.3(paramStatus, paramString), mTimeoutMillis, TimeUnit.MILLISECONDS);
    }
    do
    {
      return;
      Timber.g("SecureChatSessionPinger", "CHAT-LOG: FAILED SENDING PING " + val$pingMessage.k() + "with reason: " + paramString, new Object[0]);
    } while (paramStatus != SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_MESSAGE_QUEUE_FULL);
    this$0.mInterface.f();
  }
}

/* Location:
 * Qualified Name:     axq.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */