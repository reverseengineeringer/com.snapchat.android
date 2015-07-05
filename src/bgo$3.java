import android.os.Handler;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;

final class bgo$3
  implements Runnable
{
  bgo$3(bgo parambgo) {}
  
  public final void run()
  {
    bgo localbgo = this$0;
    long l2 = SystemClock.elapsedRealtime();
    long l3 = mDuration + l2;
    long l1 = l2;
    if (l2 >= l3) {
      localbgo.d();
    }
    do
    {
      do
      {
        return;
        if (l1 >= l3) {
          break;
        }
        bgp.a(mCountdownInterval);
      } while (mIsCancelled.get());
      if (mHandler != null) {
        mHandler.post(mTickMessage);
      }
      for (;;)
      {
        l1 += mCountdownInterval;
        break;
        localbgo.a();
      }
    } while (mIsCancelled.get());
    localbgo.d();
  }
}

/* Location:
 * Qualified Name:     bgo.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */