import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;

public final class bbb
{
  private static final bbb BACKGROUND_INSTANCE = new bbb(100L, -1L, new bae());
  private static final bbb SWIPE_INSTANCE = new bbb(20L, 250L, new bay());
  private static final String TAG = "UiLatencyChecker";
  public boolean mDeferPause;
  private AtomicBoolean mIsRunning = new AtomicBoolean(false);
  private final long mMaxTries;
  private final long mSleepDuration;
  private final bbb.a mThreadFactory;
  public final bba mUiLatencyAggregator;
  
  private bbb(long paramLong1, long paramLong2, bba parambba)
  {
    this(paramLong1, paramLong2, parambba, new bbb.a(new Handler(Looper.getMainLooper()), new bhk()));
  }
  
  private bbb(long paramLong1, long paramLong2, bba parambba, bbb.a parama)
  {
    mSleepDuration = paramLong1;
    mMaxTries = paramLong2;
    mThreadFactory = parama;
    mUiLatencyAggregator = parambba;
  }
  
  public static bbb a()
  {
    return BACKGROUND_INSTANCE;
  }
  
  public static bbb b()
  {
    return SWIPE_INSTANCE;
  }
  
  public final void a(String... paramVarArgs)
  {
    if (!mDeferPause)
    {
      mIsRunning = new AtomicBoolean(true);
      mUiLatencyAggregator.a(paramVarArgs);
      paramVarArgs = mThreadFactory;
      long l1 = mSleepDuration;
      long l2 = mMaxTries;
      new Thread(new bbb.a.1(paramVarArgs, mIsRunning, l2, mUiLatencyAggregator, l1)).start();
    }
  }
  
  public final void b(String... paramVarArgs)
  {
    mDeferPause = false;
    mIsRunning.set(false);
    mUiLatencyAggregator.b(paramVarArgs);
  }
  
  public static final class a
  {
    private final bhk mClock;
    final Handler mUiHandler;
    
    public a(Handler paramHandler, bhk parambhk)
    {
      mUiHandler = paramHandler;
      mClock = parambhk;
    }
  }
}

/* Location:
 * Qualified Name:     bbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */