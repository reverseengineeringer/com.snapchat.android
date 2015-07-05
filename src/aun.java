import android.os.SystemClock;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public final class aun
{
  public long mAccumulatedTimeMillis;
  private final bgk mClock;
  private long mCurrentIntervalStartTimeMillis;
  public boolean mIsAccumulating;
  
  public aun()
  {
    this(new bgk());
  }
  
  private aun(bgk parambgk)
  {
    mClock = parambgk;
    mAccumulatedTimeMillis = 0L;
    mCurrentIntervalStartTimeMillis = -1L;
    mIsAccumulating = false;
  }
  
  public final void a()
  {
    if (!mIsAccumulating)
    {
      mIsAccumulating = true;
      mCurrentIntervalStartTimeMillis = SystemClock.elapsedRealtime();
    }
  }
  
  public final void b()
  {
    if (mIsAccumulating)
    {
      mAccumulatedTimeMillis += SystemClock.elapsedRealtime() - mCurrentIntervalStartTimeMillis;
      mIsAccumulating = false;
    }
  }
}

/* Location:
 * Qualified Name:     aun
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */