import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import com.snapchat.android.util.chat.SecureChatSession.ConnectionState;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class ayo
  implements ayc, aye
{
  private static final String TAG = "SecureChatSessionPinger";
  final ayo.a mInterface;
  final Set<String> mPingIds = Collections.newSetFromMap(new ConcurrentHashMap());
  private final long mPingIntervalMillis;
  private ScheduledFuture mPingScheduledFuture;
  private volatile boolean mRunning;
  final ScheduledExecutorService mScheduledExecutorService;
  final long mTimeoutMillis;
  
  public ayo(@chc ayo.a parama, @chc ScheduledExecutorService paramScheduledExecutorService)
  {
    mInterface = parama;
    mScheduledExecutorService = paramScheduledExecutorService;
    mPingIntervalMillis = 15000L;
    mTimeoutMillis = 10000L;
  }
  
  final void a()
  {
    mPingScheduledFuture = null;
    if (mRunning)
    {
      final bjp localbjp = (bjp)aty.b(bji.a.PING);
      SecureChatService.SecureChatWriteCompletedCallback local2 = new SecureChatService.SecureChatWriteCompletedCallback()
      {
        public final void a(boolean paramAnonymousBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramAnonymousStatus, String paramAnonymousString)
        {
          if (paramAnonymousBoolean)
          {
            new StringBuilder("CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: ").append(localbjp.k());
            paramAnonymousStatus = ayo.this;
            paramAnonymousString = localbjp.k();
            mPingIds.add(paramAnonymousString);
            mScheduledExecutorService.schedule(new ayo.3(paramAnonymousStatus, paramAnonymousString), mTimeoutMillis, TimeUnit.MILLISECONDS);
          }
          do
          {
            return;
            new StringBuilder("CHAT-LOG: FAILED SENDING PING ").append(localbjp.k()).append("with reason: ").append(paramAnonymousString);
          } while (paramAnonymousStatus != SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_MESSAGE_QUEUE_FULL);
          mInterface.f();
        }
      };
      mInterface.a(localbjp, local2);
    }
  }
  
  public final void a(bji parambji)
  {
    if (parambji.j() == bji.a.PING_RESPONSE)
    {
      new StringBuilder("CHAT-LOG: RECEIVED: ").append(parambji);
      parambji = (bjq)parambji;
      mPingIds.remove(parambji.a());
      mPingScheduledFuture = mScheduledExecutorService.schedule(new Runnable()
      {
        public final void run()
        {
          a();
        }
      }, mPingIntervalMillis, TimeUnit.MILLISECONDS);
    }
  }
  
  public final void a(SecureChatSession.ConnectionState paramConnectionState)
  {
    if (paramConnectionState == SecureChatSession.ConnectionState.CONNECTED)
    {
      mRunning = true;
      a();
    }
    while (paramConnectionState != SecureChatSession.ConnectionState.DISCONNECTED) {
      return;
    }
    mRunning = false;
    mPingIds.clear();
  }
  
  public static abstract interface a
  {
    public abstract void a(bji parambji, SecureChatService.SecureChatWriteCompletedCallback paramSecureChatWriteCompletedCallback);
    
    public abstract void f();
  }
}

/* Location:
 * Qualified Name:     ayo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */