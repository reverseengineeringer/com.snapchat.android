import android.os.SystemClock;

public final class uo
  implements bfk.a
{
  private final bgk mClock;
  public long mFirstByteReceivedElapsedRealtimeInMillis;
  public int mFirstByteSize;
  public boolean mIsReceived = false;
  
  public uo()
  {
    this(bglmClock);
  }
  
  private uo(@cgb bgk parambgk)
  {
    mClock = parambgk;
  }
  
  public final void a(int paramInt)
  {
    if (!mIsReceived)
    {
      mFirstByteSize = paramInt;
      mFirstByteReceivedElapsedRealtimeInMillis = SystemClock.elapsedRealtime();
      mIsReceived = true;
    }
  }
}

/* Location:
 * Qualified Name:     uo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */