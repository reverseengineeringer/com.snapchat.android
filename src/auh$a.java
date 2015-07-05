import com.snapchat.android.Timber;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class auh$a
  implements ThreadFactory
{
  private static final AtomicInteger sGlobalCount = new AtomicInteger(0);
  private final AtomicInteger mCount = new AtomicInteger(0);
  private final String mName;
  private final int mPriority;
  
  public auh$a(String paramString, int paramInt)
  {
    mName = paramString;
    mPriority = paramInt;
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    int i = mCount.incrementAndGet();
    int j = sGlobalCount.incrementAndGet();
    Timber.b("ScExecutors", "Creating new thread in %s pool, local count:%d, global count:%d", new Object[] { mName, Integer.valueOf(i), Integer.valueOf(j) });
    return new Thread(new bgu(paramRunnable, mPriority), String.format("%s-Pool-%d", new Object[] { mName, Integer.valueOf(i) }));
  }
}

/* Location:
 * Qualified Name:     auh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */