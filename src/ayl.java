import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class ayl
  extends Thread
{
  private static final String TAG = "SecureChatSessionInputThread";
  public final SynchronousQueue<ayi> mInputStreamQueue = new SynchronousQueue();
  private final aym mRateLimiter;
  private final List<aye> mReceivedMessageListeners = new CopyOnWriteArrayList();
  public final AtomicBoolean mStopped = new AtomicBoolean(false);
  public final List<ayf> mStreamProcessingStateListeners = new CopyOnWriteArrayList();
  
  public ayl(aym paramaym)
  {
    setName("SecureChatSessionInputThread");
    mRateLimiter = paramaym;
  }
  
  public final void a(aye paramaye)
  {
    mReceivedMessageListeners.add(paramaye);
  }
  
  public final void run()
  {
    if (!mStopped.get()) {
      for (;;)
      {
        Object localObject2;
        try
        {
          ayi localayi = (ayi)mInputStreamQueue.take();
          localObject2 = mStreamProcessingStateListeners.iterator();
          if (!((Iterator)localObject2).hasNext()) {
            break label130;
          }
          ((ayf)((Iterator)localObject2).next()).a();
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
          ((ayf)((Iterator)localObject2).next()).a(localException);
        }
        for (;;)
        {
          localObject2 = mRateLimiter;
          if ((mRunning) && (mMessagesCounter.incrementAndGet() > mMaxMessagesPerSecond)) {
            mRateLimiterInterface.e();
          }
          label130:
          localObject2 = localException.a();
          if (localObject2 == null) {
            break;
          }
          Iterator localIterator = mReceivedMessageListeners.iterator();
          while (localIterator.hasNext()) {
            ((aye)localIterator.next()).a((bji)localObject2);
          }
        }
        Object localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ayl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */