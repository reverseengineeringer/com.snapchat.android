import android.os.Handler;
import android.os.Message;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

public final class bqe$b
  extends Thread
{
  private final ReferenceQueue<Object> a;
  private final Handler b;
  
  bqe$b(ReferenceQueue<Object> paramReferenceQueue, Handler paramHandler)
  {
    a = paramReferenceQueue;
    b = paramHandler;
    setDaemon(true);
    setName("Picasso-refQueue");
  }
  
  public final void run()
  {
    Process.setThreadPriority(10);
    try
    {
      for (;;)
      {
        bpk.a locala = (bpk.a)a.remove(1000L);
        Message localMessage = b.obtainMessage();
        if (locala != null)
        {
          what = 3;
          obj = a;
          b.sendMessage(localMessage);
        }
        else
        {
          localMessage.recycle();
        }
      }
      return;
    }
    catch (Exception localException)
    {
      b.post(new Runnable()
      {
        public final void run()
        {
          throw new RuntimeException(localException);
        }
      });
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     bqe.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */