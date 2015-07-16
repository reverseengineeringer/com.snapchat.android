import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class avf
{
  private static final int CORE_POOL_SIZE = 3;
  public static final ExecutorService HIGH_PRIORITY_EXECUTOR;
  private static final int KEEP_ALIVE = 10;
  private static final int MAXIMUM_POOL_SIZE = 64;
  public static final ExecutorService MEDIA_PLAYER_SERIAL_EXECUTOR;
  public static final ExecutorService MISCELLANEOUS_EXECUTOR;
  public static final ExecutorService NETWORK_EXECUTOR;
  public static final ScheduledThreadPoolExecutor SCHEDULING_EXECUTOR = new ScheduledThreadPoolExecutor(1);
  public static final ExecutorService SERIAL_BACKGROUND_EXECUTOR;
  public static final ExecutorService SERIAL_EXECUTOR_FOR_DEBUGGING;
  public static final ExecutorService SERIAL_EXECUTOR_FOR_LOGGING;
  public static final ExecutorService SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS;
  private static final String TAG = "ScExecutors";
  public static final ExecutorService THUMBNAIL_EXECUTOR = new ThreadPoolExecutor(3, 3, 10L, TimeUnit.SECONDS, a(), new avf.a("Thumbnail", 10));
  
  static
  {
    NETWORK_EXECUTOR = new ThreadPoolExecutor(3, 64, 10L, TimeUnit.SECONDS, a(), new avf.a("Network", 0));
    MISCELLANEOUS_EXECUTOR = new ThreadPoolExecutor(3, 64, 10L, TimeUnit.SECONDS, a(), new avf.a("Misc", 10));
    HIGH_PRIORITY_EXECUTOR = new ThreadPoolExecutor(3, 64, 10L, TimeUnit.SECONDS, a(), new avf.a("HighPriority", -2));
    SERIAL_BACKGROUND_EXECUTOR = new ThreadPoolExecutor(1, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, a(), new avf.a("Serial", 0));
    MEDIA_PLAYER_SERIAL_EXECUTOR = new ThreadPoolExecutor(1, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, a(), new avf.a("MediaPlayer", -2));
    SERIAL_EXECUTOR_FOR_LOGGING = new ThreadPoolExecutor(1, Integer.MAX_VALUE, 2L, TimeUnit.SECONDS, a(), new avf.a("Logging", 10));
    SERIAL_EXECUTOR_FOR_DEBUGGING = new ThreadPoolExecutor(1, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, a(), new avf.a("Debugging", -1));
    SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, a(), new avf.a("SqlWriteOps", 10));
  }
  
  private static BlockingQueue<Runnable> a()
  {
    return new LinkedBlockingQueue(Integer.MAX_VALUE);
  }
  
  static final class a
    implements ThreadFactory
  {
    private static final AtomicInteger sGlobalCount = new AtomicInteger(0);
    private final AtomicInteger mCount = new AtomicInteger(0);
    private final String mName;
    private final int mPriority;
    
    public a(String paramString, int paramInt)
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
}

/* Location:
 * Qualified Name:     avf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */