import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;

final class bbb$a$1
  implements Runnable
{
  bbb$a$1(bbb.a parama, AtomicBoolean paramAtomicBoolean, long paramLong1, bba parambba, long paramLong2) {}
  
  public final void run()
  {
    int j;
    for (int i = 0; val$isRunning.get(); i = j)
    {
      j = i;
      if (val$maxTimes >= 0L)
      {
        if (i >= val$maxTimes) {
          break;
        }
        j = i + 1;
      }
      final long l = System.currentTimeMillis();
      this$0.mUiHandler.post(new Runnable()
      {
        public final void run()
        {
          long l = System.currentTimeMillis();
          val$uiLatencyAggregator.a(l - l);
        }
      });
      bhp.a(val$sleepDuration);
    }
  }
}

/* Location:
 * Qualified Name:     bbb.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */