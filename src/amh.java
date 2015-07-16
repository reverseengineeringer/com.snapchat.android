import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class amh
  implements ThreadFactory
{
  private static final amh a = new amh();
  private final AtomicInteger b = new AtomicInteger(1);
  
  public static amh a()
  {
    return a;
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new bhu(paramRunnable, 10), String.format("Download Manager Thread %d", new Object[] { Integer.valueOf(b.getAndIncrement()) }));
  }
}

/* Location:
 * Qualified Name:     amh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */