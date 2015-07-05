import com.snapchat.android.Timber;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import com.snapchat.android.util.chat.SecureChatSession.ConnectionState;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class axq
  implements axe, axg
{
  private static final String TAG = "SecureChatSessionPinger";
  final axq.a mInterface;
  final Set<String> mPingIds = Collections.newSetFromMap(new ConcurrentHashMap());
  private final long mPingIntervalMillis;
  private ScheduledFuture mPingScheduledFuture;
  private volatile boolean mRunning;
  final ScheduledExecutorService mScheduledExecutorService;
  final long mTimeoutMillis;
  
  public axq(@cgb axq.a parama, @cgb ScheduledExecutorService paramScheduledExecutorService)
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
      final bip localbip = (bip)asz.b(bii.a.PING);
      SecureChatService.SecureChatWriteCompletedCallback local2 = new SecureChatService.SecureChatWriteCompletedCallback()
      {
        public final void a(boolean paramAnonymousBoolean, SecureChatService.SecureChatWriteCompletedCallback.Status paramAnonymousStatus, String paramAnonymousString)
        {
          if (paramAnonymousBoolean)
          {
            Timber.g("SecureChatSessionPinger", "CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: " + localbip.k(), new Object[0]);
            paramAnonymousStatus = axq.this;
            paramAnonymousString = localbip.k();
            mPingIds.add(paramAnonymousString);
            mScheduledExecutorService.schedule(new axq.3(paramAnonymousStatus, paramAnonymousString), mTimeoutMillis, TimeUnit.MILLISECONDS);
          }
          do
          {
            return;
            Timber.g("SecureChatSessionPinger", "CHAT-LOG: FAILED SENDING PING " + localbip.k() + "with reason: " + paramAnonymousString, new Object[0]);
          } while (paramAnonymousStatus != SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_MESSAGE_QUEUE_FULL);
          mInterface.f();
        }
      };
      mInterface.a(localbip, local2);
      return;
    }
    Timber.g("SecureChatSessionPinger", "CHAT-LOG: Called writePingMessage but pinger not running!", new Object[0]);
  }
  
  public final void a(bii parambii)
  {
    if (parambii.j() == bii.a.PING_RESPONSE)
    {
      Timber.g("SecureChatSessionPinger", "CHAT-LOG: RECEIVED: " + parambii, new Object[0]);
      parambii = (biq)parambii;
      mPingIds.remove(parambii.a());
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
    public abstract void a(bii parambii, SecureChatService.SecureChatWriteCompletedCallback paramSecureChatWriteCompletedCallback);
    
    public abstract void f();
  }
}

/* Location:
 * Qualified Name:     axq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */