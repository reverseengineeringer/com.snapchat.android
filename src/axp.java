import com.snapchat.android.Timber;
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

public final class axp
  extends Thread
{
  private static final String TAG = "SecureChatSessionOutputThread";
  public final axm mAckTracker;
  public final ArrayBlockingQueue<bii> mMessageQueue = new ArrayBlockingQueue(100);
  public final SynchronousQueue<axl> mOutputStreamQueue = new SynchronousQueue();
  public final AtomicBoolean mStopped = new AtomicBoolean(false);
  public final List<axh> mStreamProcessingStateListeners = new CopyOnWriteArrayList();
  public final AtomicReference<axp.a> mThreadState = new AtomicReference(axp.a.AWAITING_CONNECTION);
  
  public axp(axm paramaxm)
  {
    setName("SecureChatSessionOutputThread");
    mAckTracker = paramaxm;
  }
  
  private void a(Exception paramException)
  {
    Iterator localIterator = mStreamProcessingStateListeners.iterator();
    while (localIterator.hasNext()) {
      ((axh)localIterator.next()).a(paramException);
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
          axl localaxl = (axl)mOutputStreamQueue.take();
          Timber.g("SecureChatSessionOutputThread", "CHAT-LOG: SecureChatSessionOutputThread got output stream", new Object[0]);
          mThreadState.set(axp.a.CONNECTED);
          localObject2 = mStreamProcessingStateListeners.iterator();
          if (!((Iterator)localObject2).hasNext()) {
            break label170;
          }
          ((axh)((Iterator)localObject2).next()).a();
          continue;
          if (!((Iterator)localObject2).hasNext()) {
            break;
          }
        }
        catch (Exception localException)
        {
          mThreadState.set(axp.a.AWAITING_CONNECTION);
          a(localException);
          localObject2 = new ArrayList();
          mMessageQueue.drainTo((Collection)localObject2);
          localObject2 = ((List)localObject2).iterator();
        }
        Object localObject3;
        for (;;)
        {
          localObject3 = (bii)((Iterator)localObject2).next();
          mAckTracker.a(((bii)localObject3).k(), SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_ERROR, "Exception in SecureChatSessionOutputThread: " + localException);
        }
        for (;;)
        {
          label170:
          if (mStopped.get()) {
            break label285;
          }
          localObject2 = (bii)mMessageQueue.take();
          try
          {
            Timber.g("SecureChatSessionOutputThread", "CHAT-LOG: SecureChatSessionOutputThread writing message " + localObject2, new Object[0]);
            localException.a((bii)localObject2);
            localObject3 = mAckTracker;
            String str = ((bii)localObject2).k();
            localObject3 = (SecureChatService.SecureChatWriteCompletedCallback)mMessageCallbacksPendingWrite.remove(str);
            if (localObject3 != null) {
              ((SecureChatService.SecureChatWriteCompletedCallback)localObject3).a(true, SecureChatService.SecureChatWriteCompletedCallback.Status.SUCCESS, null);
            }
          }
          catch (IOException localIOException)
          {
            mAckTracker.a(((bii)localObject2).k(), SecureChatService.SecureChatWriteCompletedCallback.Status.SCCP_ERROR, localIOException.getMessage());
          }
        }
        continue;
        label285:
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
 * Qualified Name:     axp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */