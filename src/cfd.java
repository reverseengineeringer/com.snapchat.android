import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class cfd
{
  public static Executor a;
  private static Executor b;
  private static final List<Object> c = new ArrayList();
  
  static
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() * 2);
    a = localScheduledExecutorService;
    b = localScheduledExecutorService;
  }
  
  public static void a(Runnable paramRunnable, int paramInt)
  {
    if (paramInt > 0)
    {
      if (!(b instanceof ScheduledExecutorService)) {
        throw new IllegalArgumentException("The executor set does not support scheduling");
      }
      ((ScheduledExecutorService)b).schedule(paramRunnable, paramInt, TimeUnit.MILLISECONDS);
      return;
    }
    if ((b instanceof ExecutorService))
    {
      ((ExecutorService)b).submit(paramRunnable);
      return;
    }
    b.execute(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     cfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */