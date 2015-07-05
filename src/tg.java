import com.snapchat.android.Timber;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class tg
  extends th
{
  public static final int DEFAULT_RETRIES = 2;
  public static final um EXPONENTIAL_STRATEGY = new um();
  private static final String TAG = "BaseRetriableScRequestTask";
  protected static ScheduledExecutorService sScheduledExecutor;
  @cgc
  private final un mBackoffStrategy;
  protected int mCurrentRetryAttempt = 0;
  protected boolean mIsExecutedAsynchronous;
  private final int mNumRetries = 2;
  
  public tg()
  {
    this(null, (byte)0);
  }
  
  public tg(@cgc un paramun)
  {
    this(paramun, (byte)0);
  }
  
  private tg(@cgc un paramun, byte paramByte)
  {
    mBackoffStrategy = paramun;
    sScheduledExecutor = auh.SCHEDULING_EXECUTOR;
  }
  
  public final void a(@cgb uc paramuc)
  {
    if ((mIsExecutedAsynchronous) && (!paramuc.d()) && (mCurrentRetryAttempt < mNumRetries) && (mResponseCode != 401))
    {
      mCurrentRetryAttempt += 1;
      if (mBackoffStrategy == null) {
        break label138;
      }
    }
    label138:
    for (long l = mBackoffStrategy.a(mCurrentRetryAttempt);; l = 0L)
    {
      Timber.b("NETWORK-LOG: %s is failed to complete. Going for %d attempt, backingoff for %d seconds", getClass().getSimpleName(), new Object[] { Integer.valueOf(mCurrentRetryAttempt), Long.valueOf(l) });
      if (l > 0L)
      {
        sScheduledExecutor.schedule(new Runnable()
        {
          public final void run()
          {
            Timber.b("BaseRetriableScRequestTask", "NETWORK-LOG: %s is executing for %d attempt", new Object[] { getClass().getSimpleName(), Integer.valueOf(mCurrentRetryAttempt) });
            f();
          }
        }, l, TimeUnit.SECONDS);
        return;
      }
      f();
      return;
      super.a(paramuc);
      return;
    }
  }
  
  public final void f()
  {
    mIsExecutedAsynchronous = true;
    Timber.b("BaseRetriableScRequestTask", "NETWORK-LOG: %s is executing for first attempt", new Object[] { getClass().getSimpleName(), Integer.valueOf(mCurrentRetryAttempt) });
    super.f();
  }
}

/* Location:
 * Qualified Name:     tg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */