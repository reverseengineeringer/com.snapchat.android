import android.os.SystemClock;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public final class avl
{
  public long mAccumulatedTimeMillis;
  private final bhk mClock;
  private long mCurrentIntervalStartTimeMillis;
  public boolean mIsAccumulating;
  
  public avl()
  {
    this(new bhk());
  }
  
  private avl(bhk parambhk)
  {
    mClock = parambhk;
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
 * Qualified Name:     avl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */