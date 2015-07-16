import com.snapchat.android.discover.analytics.EditionPerformanceAnalytics;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import java.util.HashSet;
import java.util.Set;

public final class acr
{
  public final Set<String> a = new HashSet();
  public final Set<String> b = new HashSet();
  public final EditionOpenOrigin c;
  public final EditionPerformanceAnalytics d;
  
  public acr(@chc EditionOpenOrigin paramEditionOpenOrigin)
  {
    this(paramEditionOpenOrigin, new EditionPerformanceAnalytics(paramEditionOpenOrigin));
  }
  
  private acr(@chc EditionOpenOrigin paramEditionOpenOrigin, EditionPerformanceAnalytics paramEditionPerformanceAnalytics)
  {
    c = paramEditionOpenOrigin;
    d = paramEditionPerformanceAnalytics;
  }
}

/* Location:
 * Qualified Name:     acr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */