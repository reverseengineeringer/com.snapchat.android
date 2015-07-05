import android.os.SystemClock;

public final class bej
{
  public final long eventTimeMilliseconds;
  
  public bej()
  {
    this(SystemClock.elapsedRealtime());
  }
  
  private bej(long paramLong)
  {
    eventTimeMilliseconds = paramLong;
  }
}

/* Location:
 * Qualified Name:     bej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */