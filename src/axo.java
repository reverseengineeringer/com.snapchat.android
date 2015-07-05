import com.snapchat.android.Timber;
import com.snapchat.android.util.chat.SecureChatSession.ConnectionState;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class axo
  implements axe
{
  private static final String TAG = "SecureChatSessionMessageRateLimiter";
  final int mMaxMessagesPerSecond;
  final AtomicInteger mMessagesCounter = new AtomicInteger(0);
  final axo.a mRateLimiterInterface;
  volatile boolean mRunning = false;
  private final ScheduledExecutorService mScheduledExecutorService;
  
  public axo(axo.a parama, ScheduledExecutorService paramScheduledExecutorService)
  {
    mRateLimiterInterface = parama;
    mScheduledExecutorService = paramScheduledExecutorService;
    mMaxMessagesPerSecond = 32;
  }
  
  final void a()
  {
    if (mRunning) {
      mScheduledExecutorService.schedule(new Runnable()
      {
        public final void run()
        {
          mMessagesCounter.set(0);
          a();
        }
      }, 1L, TimeUnit.SECONDS);
    }
  }
  
  public final void a(SecureChatSession.ConnectionState paramConnectionState)
  {
    if (paramConnectionState == SecureChatSession.ConnectionState.CONNECTED)
    {
      Timber.g("SecureChatSessionMessageRateLimiter", "CHAT-LOG: SecureChatSessionMessageRateLimiter STARTED", new Object[0]);
      mRunning = true;
      mMessagesCounter.set(0);
      a();
    }
    while (paramConnectionState != SecureChatSession.ConnectionState.DISCONNECTED) {
      return;
    }
    Timber.g("SecureChatSessionMessageRateLimiter", "CHAT-LOG: SecureChatSessionMessageRateLimiter STOPPED", new Object[0]);
    mRunning = false;
  }
  
  public static abstract interface a
  {
    public abstract void e();
  }
}

/* Location:
 * Qualified Name:     axo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */