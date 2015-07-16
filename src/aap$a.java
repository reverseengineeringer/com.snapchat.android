import android.os.SystemClock;

public final class aap$a
{
  public static long a = 604800000L;
  public final String b;
  public final long c;
  private final bhk d;
  
  private aap$a(@chc bhk parambhk, @chc String paramString, long paramLong)
  {
    d = parambhk;
    b = paramString;
    c = paramLong;
  }
  
  public aap$a(@chc String paramString, long paramLong)
  {
    this(new bhk(), paramString, paramLong);
  }
  
  public final boolean a()
  {
    return SystemClock.elapsedRealtime() - c > a;
  }
}

/* Location:
 * Qualified Name:     aap.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */