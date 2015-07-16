import android.os.SystemClock;

public final class bfi
{
  public final long eventTimeMilliseconds;
  
  public bfi()
  {
    this(SystemClock.elapsedRealtime());
  }
  
  private bfi(long paramLong)
  {
    eventTimeMilliseconds = paramLong;
  }
}

/* Location:
 * Qualified Name:     bfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */