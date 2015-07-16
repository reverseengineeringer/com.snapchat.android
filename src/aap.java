import android.os.SystemClock;
import java.util.HashMap;
import java.util.Map;

public class aap
{
  public final Map<String, Long> a = new HashMap();
  private final bhk b;
  
  public aap()
  {
    this(new bhk());
  }
  
  private aap(bhk parambhk)
  {
    b = parambhk;
  }
  
  public final boolean a(@chc String paramString)
  {
    return a.containsKey(paramString);
  }
  
  public final void b(@chc String paramString)
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
    private final bhk d;
    
    private a(@chc bhk parambhk, @chc String paramString, long paramLong)
    {
      d = parambhk;
      b = paramString;
      c = paramLong;
    }
    
    public a(@chc String paramString, long paramLong)
    {
      this(new bhk(), paramString, paramLong);
    }
    
    public final boolean a()
    {
      return SystemClock.elapsedRealtime() - c > a;
    }
  }
}

/* Location:
 * Qualified Name:     aap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */