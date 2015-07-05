import android.os.SystemClock;

public final class zp$a
{
  public static long a = 604800000L;
  public final String b;
  public final long c;
  private final bgk d;
  
  private zp$a(@cgb bgk parambgk, @cgb String paramString, long paramLong)
  {
    d = parambgk;
    b = paramString;
    c = paramLong;
  }
  
  public zp$a(@cgb String paramString, long paramLong)
  {
    this(new bgk(), paramString, paramLong);
  }
  
  public final boolean a()
  {
    return SystemClock.elapsedRealtime() - c > a;
  }
}

/* Location:
 * Qualified Name:     zp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */