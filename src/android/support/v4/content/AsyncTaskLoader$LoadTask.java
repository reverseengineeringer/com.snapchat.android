package android.support.v4.content;

import android.os.SystemClock;
import java.util.concurrent.CountDownLatch;

final class AsyncTaskLoader$LoadTask
  extends ModernAsyncTask<Void, Void, D>
  implements Runnable
{
  private CountDownLatch done = new CountDownLatch(1);
  D result;
  boolean waiting;
  
  AsyncTaskLoader$LoadTask(AsyncTaskLoader paramAsyncTaskLoader) {}
  
  private D doInBackground$532ebdd5()
  {
    result = this$0.loadInBackground();
    return (D)result;
  }
  
  protected final void onCancelled()
  {
    try
    {
      this$0.dispatchOnCancelled(this, result);
      return;
    }
    finally
    {
      done.countDown();
    }
  }
  
  protected final void onPostExecute(D paramD)
  {
    for (;;)
    {
      AsyncTaskLoader localAsyncTaskLoader;
      try
      {
        localAsyncTaskLoader = this$0;
        if (mTask != this)
        {
          localAsyncTaskLoader.dispatchOnCancelled(this, paramD);
          return;
        }
        if (localAsyncTaskLoader.isAbandoned())
        {
          localAsyncTaskLoader.onCanceled(paramD);
          continue;
        }
        localAsyncTaskLoader.commitContentChanged();
      }
      finally
      {
        done.countDown();
      }
      mLastLoadCompleteTime = SystemClock.uptimeMillis();
      mTask = null;
      localAsyncTaskLoader.deliverResult(paramD);
    }
  }
  
  public final void run()
  {
    waiting = false;
    this$0.executePendingTask();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.AsyncTaskLoader.LoadTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */