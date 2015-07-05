import android.os.SystemClock;
import java.util.HashMap;
import java.util.Map;

public class zp
{
  public final Map<String, Long> a = new HashMap();
  private final bgk b;
  
  public zp()
  {
    this(new bgk());
  }
  
  private zp(bgk parambgk)
  {
    b = parambgk;
  }
  
  public final boolean a(@cgb String paramString)
  {
    return a.containsKey(paramString);
  }
  
  public final void b(@cgb String paramString)
  {
    if (!a.containsKey(paramString)) {
      a.put(paramString, Long.valueOf(SystemClock.elapsedRealtime()));
    }
  }
  
  public static final class a
  {
    public static long a = 604800000L;
    public final String b;
    public final long c;
    private final bgk d;
    
    private a(@cgb bgk parambgk, @cgb String paramString, long paramLong)
    {
      d = parambgk;
      b = paramString;
      c = paramLong;
    }
    
    public a(@cgb String paramString, long paramLong)
    {
      this(new bgk(), paramString, paramLong);
    }
    
    public final boolean a()
    {
      return SystemClock.elapsedRealtime() - c > a;
    }
  }
}

/* Location:
 * Qualified Name:     zp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */