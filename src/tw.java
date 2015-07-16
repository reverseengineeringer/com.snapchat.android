import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class tw
  extends tx
{
  public static final int DEFAULT_RETRIES = 2;
  public static final vd EXPONENTIAL_STRATEGY = new vd();
  private static final String TAG = "BaseRetriableScRequestTask";
  protected static ScheduledExecutorService sScheduledExecutor;
  @chd
  private final ve mBackoffStrategy;
  protected int mCurrentRetryAttempt = 0;
  protected boolean mIsExecutedAsynchronous;
  private final int mNumRetries = 2;
  
  public tw()
  {
    this(null, (byte)0);
  }
  
  public tw(@chd ve paramve)
  {
    this(paramve, (byte)0);
  }
  
  private tw(@chd ve paramve, byte paramByte)
  {
    mBackoffStrategy = paramve;
    sScheduledExecutor = avf.SCHEDULING_EXECUTOR;
  }
  
  public void execute()
  {
    mIsExecutedAsynchronous = true;
    getClass().getSimpleName();
    int i = mCurrentRetryAttempt;
    super.execute();
  }
  
  public void onResult(@chc us paramus)
  {
    if ((mIsExecutedAsynchronous) && (!paramus.d()) && (mCurrentRetryAttempt < mNumRetries) && (mResponseCode != 401))
    {
      mCurrentRetryAttempt += 1;
      if (mBackoffStrategy == null) {
        break label118;
      }
    }
    label118:
    for (long l = mBackoffStrategy.a(mCurrentRetryAttempt);; l = 0L)
    {
      getClass().getSimpleName();
      int i = mCurrentRetryAttempt;
      if (l > 0L)
      {
        sScheduledExecutor.schedule(new Runnable()
        {
          public final void run()
          {
            getClass().getSimpleName();
            int i = mCurrentRetryAttempt;
            execute();
          }
        }, l, TimeUnit.SECONDS);
        return;
      }
      execute();
      return;
      super.onResult(paramus);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     tw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */