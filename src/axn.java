import com.snapchat.android.Timber;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class axn
  extends Thread
{
  private static final String TAG = "SecureChatSessionInputThread";
  public final SynchronousQueue<axk> mInputStreamQueue = new SynchronousQueue();
  private final axo mRateLimiter;
  private final List<axg> mReceivedMessageListeners = new CopyOnWriteArrayList();
  public final AtomicBoolean mStopped = new AtomicBoolean(false);
  public final List<axh> mStreamProcessingStateListeners = new CopyOnWriteArrayList();
  
  public axn(axo paramaxo)
  {
    setName("SecureChatSessionInputThread");
    mRateLimiter = paramaxo;
  }
  
  public final void a(axg paramaxg)
  {
    mReceivedMessageListeners.add(paramaxg);
  }
  
  public final void run()
  {
    if (!mStopped.get()) {
      for (;;)
      {
        Object localObject2;
        try
        {
          axk localaxk = (axk)mInputStreamQueue.take();
          Timber.g("SecureChatSessionInputThread", "CHAT-LOG: SecureChatSessionInputThread got input stream", new Object[0]);
          localObject2 = mStreamProcessingStateListeners.iterator();
          if (!((Iterator)localObject2).hasNext()) {
            break label141;
          }
          ((axh)((Iterator)localObject2).next()).a();
          continue;
          if (!((Iterator)localObject2).hasNext()) {
            break;
          }
        }
        catch (Exception localException)
        {
          localObject2 = mStreamProcessingStateListeners.iterator();
        }
        for (;;)
        {
          ((axh)((Iterator)localObject2).next()).a(localException);
        }
        for (;;)
        {
          localObject2 = mRateLimiter;
          if ((mRunning) && (mMessagesCounter.incrementAndGet() > mMaxMessagesPerSecond)) {
            mRateLimiterInterface.e();
          }
          label141:
          localObject2 = localException.a();
          if (localObject2 == null) {
            break;
          }
          Iterator localIterator = mReceivedMessageListeners.iterator();
          while (localIterator.hasNext()) {
            ((axg)localIterator.next()).a((bii)localObject2);
          }
        }
        Object localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     axn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */