import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ayn
  extends Thread
{
  private static final String TAG = "SecureChatSessionOutputThread";
  public final ayk mAckTracker;
  public final ArrayBlockingQueue<bji> mMessageQueue = new ArrayBlockingQueue(100);
  public final SynchronousQueue<ayj> mOutputStreamQueue = new SynchronousQueue();
  public final AtomicBoolean mStopped = new AtomicBoolean(false);
  public final List<ayf> mStreamProcessingStateListeners = new CopyOnWriteArrayList();
  public final AtomicReference<ayn.a> mThreadState = new AtomicReference(ayn.a.AWAITING_CONNECTION);
  
  public ayn(ayk paramayk)
  {
    setName("SecureChatSessionOutputThread");
    mAckTracker = paramayk;
  }
  
  private void a(Exception paramException)
  {
    Iterator localIterator = mStreamProcessingStateListeners.iterator();
    while (localIterator.hasNext()) {
      ((ayf)localIterator.next()).a(paramException);
    }
  }
  
  public final void run()
  {
    if (!mStopped.get()) {
      for (;;)
      {
        Object localObject2;
        try
        {
          ayj localayj = (ayj)mOutputStreamQueue.take();
          mThreadState.set(ayn.a.CONNECTED);
          localObject2 = mStreamProcessingStateListeners.iterator();
          if (!((Iterator)localObject2).hasNext()) {
            break label159;
          }
          ((ayf)((Iterator)localObject2).next()).a();
          continue;
          if (!((Iterator)localObject2).hasNext()) {
            break;
          }
        }
        catch (Exception localException)
        {
          mThreadState.set(ayn.a.AWAITING_CONNECTION);
          a(localException);
          localObject2 = new ArrayList();
          mMessageQueue.drainTo((Collection)localObject2);
          localObject2 = ((List)localObject2).iterator();
        }
        Object localObject3;
        for (;;)
        {
          localObject3 = (bji)((Iterator)localObject2).next();
          mAckTracker.a(((bji)localObject3).k(), SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_ERROR, "Exception in SecureChatSessionOutputThread: " + localException);
        }
        for (;;)
        {
          label159:
          if (mStopped.get()) {
            break label263;
          }
          localObject2 = (bji)mMessageQueue.take();
          try
          {
            new StringBuilder("CHAT-LOG: SecureChatSessionOutputThread writing message ").append(localObject2);
            localException.a((bji)localObject2);
            localObject3 = mAckTracker;
            String str = ((bji)localObject2).k();
            localObject3 = (SecureChatService.SecureChatWriteCompletedCallback)mMessageCallbacksPendingWrite.remove(str);
            if (localObject3 != null) {
              ((SecureChatService.SecureChatWriteCompletedCallback)localObject3).a(true, SecureChatService.SecureChatWriteCompletedCallback.Status.SUCCESS, null);
            }
          }
          catch (IOException localIOException)
          {
            mAckTracker.a(((bji)localObject2).k(), SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_ERROR, localIOException.getMessage());
          }
        }
        continue;
        label263:
        Object localObject1 = null;
      }
    }
  }
  
  public static enum a
  {
    AWAITING_CONNECTION,  CONNECTED;
    
    private a() {}
  }
}

/* Location:
 * Qualified Name:     ayn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */