import android.os.Handler;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class bho
{
  final long mCountdownInterval;
  final long mDuration;
  private final Runnable mFinishMessage = new Runnable()
  {
    public final void run()
    {
      b();
    }
  };
  final Handler mHandler;
  final AtomicBoolean mIsCancelled = new AtomicBoolean(false);
  private final AtomicBoolean mIsFinished = new AtomicBoolean(false);
  final Runnable mTickMessage = new Runnable()
  {
    public final void run()
    {
      a();
    }
  };
  
  public bho(int paramInt, long paramLong, Handler paramHandler)
  {
    mDuration = (paramInt * paramLong);
    mCountdownInterval = paramLong;
    mHandler = paramHandler;
  }
  
  public abstract void a();
  
  public abstract void b();
  
  public final void c()
  {
    synchronized (mIsCancelled)
    {
      mIsCancelled.set(true);
      return;
    }
  }
  
  final void d()
  {
    synchronized (mIsCancelled)
    {
      if (mHandler != null)
      {
        mHandler.post(mFinishMessage);
        mIsFinished.set(true);
        return;
      }
      b();
    }
  }
  
  public final void e()
  {
    new Thread(new Runnable()
    {
      public final void run()
      {
        bho localbho = bho.this;
        long l2 = SystemClock.elapsedRealtime();
        long l3 = mDuration + l2;
        long l1 = l2;
        if (l2 >= l3) {
          localbho.d();
        }
        do
        {
          do
          {
            return;
            if (l1 >= l3) {
              break;
            }
            bhp.a(mCountdownInterval);
          } while (mIsCancelled.get());
          if (mHandler != null) {
            mHandler.post(mTickMessage);
          }
          for (;;)
          {
            l1 += mCountdownInterval;
            break;
            localbho.a();
          }
        } while (mIsCancelled.get());
        localbho.d();
      }
    }).start();
  }
}

/* Location:
 * Qualified Name:     bho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */