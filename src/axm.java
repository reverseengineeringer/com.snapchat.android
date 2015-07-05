import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;

public final class axm
  implements axg
{
  public final ConcurrentHashMap<String, SecureChatService.SecureChatWriteCompletedCallback> mMessageCallbacksPendingAcks = new ConcurrentHashMap(16, 0.75F, 2);
  public final ConcurrentHashMap<String, SecureChatService.SecureChatWriteCompletedCallback> mMessageCallbacksPendingWrite = new ConcurrentHashMap(16, 0.75F, 2);
  public final ScheduledExecutorService mScheduledExecutorService;
  public final long mTimeoutInMillis;
  
  public axm(ScheduledExecutorService paramScheduledExecutorService)
  {
    mScheduledExecutorService = paramScheduledExecutorService;
    mTimeoutInMillis = 20000L;
  }
  
  public final void a(bii parambii)
  {
    SecureChatService.SecureChatWriteCompletedCallback localSecureChatWriteCompletedCallback;
    if (parambii.j() == bii.a.CONVERSATION_MESSAGE_RESPONSE)
    {
      parambii = (bhm)parambii;
      localSecureChatWriteCompletedCallback = (SecureChatService.SecureChatWriteCompletedCallback)mMessageCallbacksPendingAcks.remove(parambii.b());
      if (localSecureChatWriteCompletedCallback != null)
      {
        if (!aud.a(parambii.a())) {
          break label56;
        }
        localSecureChatWriteCompletedCallback.a(true, SecureChatService.SecureChatWriteCompletedCallback.Status.SUCCESS, null);
      }
    }
    return;
    label56:
    localSecureChatWriteCompletedCallback.a(false, SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_NACK, parambii.d());
  }
  
  public final void a(@cgb String paramString1, SecureChatService.SecureChatWriteCompletedCallback.Status paramStatus, @cgc String paramString2)
  {
    SecureChatService.SecureChatWriteCompletedCallback localSecureChatWriteCompletedCallback = (SecureChatService.SecureChatWriteCompletedCallback)mMessageCallbacksPendingWrite.remove(paramString1);
    if (localSecureChatWriteCompletedCallback != null) {
      localSecureChatWriteCompletedCallback.a(false, paramStatus, paramString2);
    }
    paramString1 = (SecureChatService.SecureChatWriteCompletedCallback)mMessageCallbacksPendingAcks.remove(paramString1);
    if (paramString1 != null) {
      paramString1.a(false, paramStatus, paramString2);
    }
  }
}

/* Location:
 * Qualified Name:     axm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */