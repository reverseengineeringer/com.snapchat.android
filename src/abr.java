import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class abr
{
  public final Set<String> a = new HashSet();
  public final Set<String> b = new HashSet();
  public final Map<String, ld> c = new HashMap();
  public final EditionPerformanceAnalytics d;
  
  public abr()
  {
    this(new EditionPerformanceAnalytics());
  }
  
  private abr(EditionPerformanceAnalytics paramEditionPerformanceAnalytics)
  {
    d = paramEditionPerformanceAnalytics;
  }
  
  public final void a(@cgb String paramString, @cgb ld paramld)
  {
    c.put(paramString, paramld);
  }
}

/* Location:
 * Qualified Name:     abr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */