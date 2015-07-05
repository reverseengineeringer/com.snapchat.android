import com.snapchat.android.Timber;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

public final class mr
{
  private final int MAX_SLEEP_TIME_BETWEEN_RETRIES_MILLISECONDS = 60000;
  private final int MIN_SLEEP_TIME_BETWEEN_RETRIES_MILLISECONDS = 100;
  private final String TAG = "StoryAdStream";
  private final mj mAdManager;
  public boolean mInLiveSection = false;
  public boolean mInPlayback = false;
  public final Object mMutex = new Object();
  public int mNextPosition;
  public int mNextUnviewedPosition;
  final Map<Integer, mo> mPositionAdResponseCache = dl.a();
  final Set<Integer> mPositionsWithInFlightRequests = new HashSet();
  mu mStoryAdStreamListener;
  public mw mStoryAdStreamRequestInfo;
  int mTimeBetweenRetriesMilliSeconds = 0;
  final Timer mTimer;
  
  public mr(mw parammw, mu parammu)
  {
    this(parammw, parammu, mj.a(), new Timer());
  }
  
  private mr(mw parammw, mu parammu, mj parammj, Timer paramTimer)
  {
    mStoryAdStreamRequestInfo = parammw;
    if (parammw != null)
    {
      mNextPosition = mFirstPosition;
      mNextUnviewedPosition = mFirstPosition;
    }
    mStoryAdStreamListener = parammu;
    mAdManager = parammj;
    mTimer = paramTimer;
  }
  
  public static mr a(int paramInt)
  {
    mr localmr = new mr(null, null);
    synchronized (mMutex)
    {
      mNextUnviewedPosition = paramInt;
      return localmr;
    }
  }
  
  private mo e()
  {
    if (!mPositionAdResponseCache.containsKey(Integer.valueOf(mNextPosition))) {
      return null;
    }
    return (mo)mPositionAdResponseCache.get(Integer.valueOf(mNextPosition));
  }
  
  private void e(int paramInt)
  {
    if ((!mInLiveSection) && (paramInt < mStoryAdStreamRequestInfo.mMinimumRemaining)) {
      Timber.b("StoryAdStream", "Stream being played from A-Z section, and there aren't enough snaps to make an ad request. snapsRemaining: %s, minRequired: %s", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(mStoryAdStreamRequestInfo.mMinimumRemaining) });
    }
    while (!c()) {
      return;
    }
    d(mNextPosition);
  }
  
  private ms f(int paramInt)
  {
    return new ms(this, paramInt);
  }
  
  public final int a()
  {
    synchronized (mMutex)
    {
      int i = mNextUnviewedPosition;
      return i;
    }
  }
  
  final void a(mo parammo)
  {
    if (mInPlayback) {
      mStoryAdStreamListener.a(parammo);
    }
  }
  
  public final void a(@cgb mo parammo, long paramLong, int paramInt)
  {
    synchronized (mMutex)
    {
      b(parammo);
      c(paramInt);
      mAdManager.a(parammo, paramLong);
      mAdManager.d(f(mAdStreamPosition));
      return;
    }
  }
  
  public final String b()
  {
    return mStoryAdStreamRequestInfo.a();
  }
  
  public final void b(int paramInt)
  {
    synchronized (mMutex)
    {
      if (!mInPlayback) {
        return;
      }
      e(paramInt);
      return;
    }
  }
  
  public final void b(mo parammo)
  {
    mPositionAdResponseCache.remove(Integer.valueOf(mAdStreamPosition));
    if (d())
    {
      int i = mAdStreamPosition;
      mNextPosition = (i + 1);
      if (i >= mNextUnviewedPosition) {
        mNextUnviewedPosition = (i + 1);
      }
    }
  }
  
  public final void c(int paramInt)
  {
    mo localmo = e();
    if (localmo != null)
    {
      a(localmo);
      return;
    }
    e(paramInt);
  }
  
  final boolean c()
  {
    if (!mInPlayback) {}
    while ((mPositionsWithInFlightRequests.contains(Integer.valueOf(mNextPosition))) || (e() != null)) {
      return false;
    }
    return true;
  }
  
  protected final void d(int paramInt)
  {
    mPositionsWithInFlightRequests.add(Integer.valueOf(paramInt));
    ms localms = f(paramInt);
    mt localmt = new mt(this, paramInt);
    mAdManager.a(localms, new mx(localmt));
  }
  
  public final boolean d()
  {
    return mStoryAdStreamRequestInfo.mFirstPosition >= 0;
  }
  
  final class a
    extends TimerTask
  {
    private a() {}
    
    public final void run()
    {
      synchronized (mMutex)
      {
        if (c()) {
          d(mNextPosition);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     mr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */