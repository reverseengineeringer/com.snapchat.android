import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.SnapchatApplication;
import java.util.concurrent.ExecutorService;

public final class bhp
{
  private static final String TAG = "ThreadUtils";
  private static boolean sAssertionsEnabled;
  private static Handler sMainThreadHandler;
  
  static
  {
    if (!SnapchatApplication.a()) {}
    for (boolean bool = true;; bool = false)
    {
      sAssertionsEnabled = bool;
      return;
    }
  }
  
  public static void a()
  {
    if ((sAssertionsEnabled) && (!c())) {
      throw new IllegalStateException("This method must be called only from the Main Thread.");
    }
  }
  
  public static void a(long paramLong)
  {
    try
    {
      Thread.sleep(paramLong);
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  public static void a(Runnable paramRunnable)
  {
    if (sMainThreadHandler == null) {
      sMainThreadHandler = new Handler(Looper.getMainLooper());
    }
    paramRunnable = new bhu(paramRunnable, -2);
    sMainThreadHandler.post(paramRunnable);
  }
  
  public static void a(Thread paramThread)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        paramThread.join();
        if (i != 0) {
          Thread.currentThread().interrupt();
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        i = 1;
      }
    }
  }
  
  public static void a(ExecutorService paramExecutorService, Runnable paramRunnable)
  {
    paramExecutorService.execute(paramRunnable);
  }
  
  public static void b()
  {
    if ((sAssertionsEnabled) && (c())) {
      throw new IllegalStateException("This method must not be called from the Main Thread.");
    }
  }
  
  public static void b(Runnable paramRunnable)
  {
    avf.MISCELLANEOUS_EXECUTOR.execute(paramRunnable);
  }
  
  public static boolean c()
  {
    return Thread.currentThread() == Looper.getMainLooper().getThread();
  }
}

/* Location:
 * Qualified Name:     bhp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */