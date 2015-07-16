import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class avf$a
  implements ThreadFactory
{
  private static final AtomicInteger sGlobalCount = new AtomicInteger(0);
  private final AtomicInteger mCount = new AtomicInteger(0);
  private final String mName;
  private final int mPriority;
  
  public avf$a(String paramString, int paramInt)
  {
    mName = paramString;
    mPriority = paramInt;
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    int i = mCount.incrementAndGet();
    sGlobalCount.incrementAndGet();
    String str = mName;
    return new Thread(new bhu(paramRunnable, mPriority), String.format("%s-Pool-%d", new Object[] { mName, Integer.valueOf(i) }));
  }
}

/* Location:
 * Qualified Name:     avf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */