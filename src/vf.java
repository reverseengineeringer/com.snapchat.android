import android.os.SystemClock;

public final class vf
  implements vg
{
  private final bhk mClock;
  public long mFirstByteReceivedElapsedRealtimeInMillis;
  public long mFirstByteSize;
  public boolean mIsReceived = false;
  
  public vf()
  {
    this(bhlmClock);
  }
  
  private vf(@chc bhk parambhk)
  {
    mClock = parambhk;
  }
  
  public final void a(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    if (!mIsReceived)
    {
      mFirstByteSize = paramLong1;
      mFirstByteReceivedElapsedRealtimeInMillis = SystemClock.elapsedRealtime();
      mIsReceived = true;
    }
  }
}

/* Location:
 * Qualified Name:     vf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */