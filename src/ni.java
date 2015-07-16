import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

public final class ni
{
  private final int MAX_SLEEP_TIME_BETWEEN_RETRIES_MILLISECONDS = 60000;
  private final int MIN_SLEEP_TIME_BETWEEN_RETRIES_MILLISECONDS = 100;
  private final String TAG = "StoryAdStream";
  private final na mAdManager;
  public boolean mInLiveSection = false;
  public boolean mInPlayback = false;
  public final Object mMutex = new Object();
  public int mNextPosition;
  public int mNextUnviewedPosition;
  final Map<Integer, nf> mPositionAdResponseCache = du.a();
  final Set<Integer> mPositionsWithInFlightRequests = new HashSet();
  nl mStoryAdStreamListener;
  public nn mStoryAdStreamRequestInfo;
  int mTimeBetweenRetriesMilliSeconds = 0;
  final Timer mTimer;
  
  public ni(nn paramnn, nl paramnl)
  {
    this(paramnn, paramnl, na.a(), new Timer());
  }
  
  private ni(nn paramnn, nl paramnl, na paramna, Timer paramTimer)
  {
    mStoryAdStreamRequestInfo = paramnn;
    if (paramnn != null)
    {
      mNextPosition = mFirstPosition;
      mNextUnviewedPosition = mFirstPosition;
    }
    mStoryAdStreamListener = paramnl;
    mAdManager = paramna;
    mTimer = paramTimer;
  }
  
  public static ni a(int paramInt)
  {
    ni localni = new ni(null, null);
    synchronized (mMutex)
    {
      mNextUnviewedPosition = paramInt;
      return localni;
    }
  }
  
  private nf e()
  {
    if (!mPositionAdResponseCache.containsKey(Integer.valueOf(mNextPosition))) {
      return null;
    }
    return (nf)mPositionAdResponseCache.get(Integer.valueOf(mNextPosition));
  }
  
  private void e(int paramInt)
  {
    if ((!mInLiveSection) && (paramInt < mStoryAdStreamRequestInfo.mMinimumRemaining)) {
      paramInt = mStoryAdStreamRequestInfo.mMinimumRemaining;
    }
    while (!c()) {
      return;
    }
    d(mNextPosition);
  }
  
  private nj f(int paramInt)
  {
    return new nj(this, paramInt);
  }
  
  public final int a()
  {
    synchronized (mMutex)
    {
      int i = mNextUnviewedPosition;
      return i;
    }
  }
  
  final void a(nf paramnf)
  {
    if (mInPlayback) {
      mStoryAdStreamListener.a(paramnf);
    }
  }
  
  public final void a(@chc nf paramnf, long paramLong, int paramInt)
  {
    synchronized (mMutex)
    {
      b(paramnf);
      c(paramInt);
      mAdManager.a(paramnf, paramLong);
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
  
  public final void b(nf paramnf)
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
    nf localnf = e();
    if (localnf != null)
    {
      a(localnf);
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
    nj localnj = f(paramInt);
    nk localnk = new nk(this, paramInt);
    mAdManager.a(localnj, new no(localnk));
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
 * Qualified Name:     ni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */