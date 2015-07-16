import android.os.Handler;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;

final class bho$3
  implements Runnable
{
  bho$3(bho parambho) {}
  
  public final void run()
  {
    bho localbho = this$0;
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
}

/* Location:
 * Qualified Name:     bho.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */