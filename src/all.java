import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class all
  implements ThreadFactory
{
  private static final all a = new all();
  private final AtomicInteger b = new AtomicInteger(1);
  
  public static all a()
  {
    return a;
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new bgu(paramRunnable, 10), String.format("Download Manager Thread %d", new Object[] { Integer.valueOf(b.getAndIncrement()) }));
  }
}

/* Location:
 * Qualified Name:     all
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */