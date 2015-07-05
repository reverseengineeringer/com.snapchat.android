package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

public abstract class AsyncTaskLoader<D>
  extends Loader<D>
{
  static final boolean DEBUG = false;
  static final String TAG = "AsyncTaskLoader";
  volatile AsyncTaskLoader<D>.LoadTask mCancellingTask;
  Handler mHandler;
  long mLastLoadCompleteTime = -10000L;
  volatile AsyncTaskLoader<D>.LoadTask mTask;
  long mUpdateThrottle;
  
  public AsyncTaskLoader(Context paramContext)
  {
    super(paramContext);
  }
  
  private void dispatchOnLoadComplete(AsyncTaskLoader<D>.LoadTask paramAsyncTaskLoader, D paramD)
  {
    if (mTask != paramAsyncTaskLoader)
    {
      dispatchOnCancelled(paramAsyncTaskLoader, paramD);
      return;
    }
    if (isAbandoned())
    {
      onCanceled(paramD);
      return;
    }
    commitContentChanged();
    mLastLoadCompleteTime = SystemClock.uptimeMillis();
    mTask = null;
    deliverResult(paramD);
  }
  
  private D onLoadInBackground()
  {
    return (D)loadInBackground();
  }
  
  private void setUpdateThrottle(long paramLong)
  {
    mUpdateThrottle = paramLong;
    if (paramLong != 0L) {
      mHandler = new Handler();
    }
  }
  
  private void waitForLoader()
  {
    LoadTask localLoadTask = mTask;
    if (localLoadTask != null) {}
    try
    {
      done.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  public final boolean cancelLoad()
  {
    if (mTask != null)
    {
      if (mCancellingTask != null)
      {
        if (mTask.waiting)
        {
          mTask.waiting = false;
          mHandler.removeCallbacks(mTask);
        }
        mTask = null;
      }
    }
    else {
      return false;
    }
    if (mTask.waiting)
    {
      mTask.waiting = false;
      mHandler.removeCallbacks(mTask);
      mTask = null;
      return false;
    }
    boolean bool = mTask.mFuture.cancel(false);
    if (bool) {
      mCancellingTask = mTask;
    }
    mTask = null;
    return bool;
  }
  
  final void dispatchOnCancelled(AsyncTaskLoader<D>.LoadTask paramAsyncTaskLoader, D paramD)
  {
    onCanceled(paramD);
    if (mCancellingTask == paramAsyncTaskLoader)
    {
      rollbackContentChanged();
      mLastLoadCompleteTime = SystemClock.uptimeMillis();
      mCancellingTask = null;
      executePendingTask();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (mTask != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(mTask);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(mTask.waiting);
    }
    if (mCancellingTask != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(mCancellingTask);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(mCancellingTask.waiting);
    }
    if (mUpdateThrottle != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      TimeUtils.formatDuration(mUpdateThrottle, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      TimeUtils.formatDuration(mLastLoadCompleteTime, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }
  
  final void executePendingTask()
  {
    if ((mCancellingTask == null) && (mTask != null))
    {
      if (mTask.waiting)
      {
        mTask.waiting = false;
        mHandler.removeCallbacks(mTask);
      }
      if ((mUpdateThrottle > 0L) && (SystemClock.uptimeMillis() < mLastLoadCompleteTime + mUpdateThrottle))
      {
        mTask.waiting = true;
        mHandler.postAtTime(mTask, mLastLoadCompleteTime + mUpdateThrottle);
      }
    }
    else
    {
      return;
    }
    mTask.executeOnExecutor(ModernAsyncTask.THREAD_POOL_EXECUTOR, null);
  }
  
  public abstract D loadInBackground();
  
  public void onCanceled(D paramD) {}
  
  protected void onForceLoad()
  {
    super.onForceLoad();
    cancelLoad();
    mTask = new LoadTask();
    executePendingTask();
  }
  
  final class LoadTask
    extends ModernAsyncTask<Void, Void, D>
    implements Runnable
  {
    private CountDownLatch done = new CountDownLatch(1);
    D result;
    boolean waiting;
    
    LoadTask() {}
    
    private D doInBackground$532ebdd5()
    {
      result = loadInBackground();
      return (D)result;
    }
    
    protected final void onCancelled()
    {
      try
      {
        dispatchOnCancelled(this, result);
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
          localAsyncTaskLoader = AsyncTaskLoader.this;
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
      executePendingTask();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.AsyncTaskLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */