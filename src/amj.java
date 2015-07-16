import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class amj
{
  public final Object a = new Object();
  public final Map<String, Set<alw.a>> b = new HashMap();
  
  public final Set<alw.a> a(aly paramaly)
  {
    synchronized (a)
    {
      paramaly = (Set)b.remove(paramaly.a());
      return paramaly;
    }
  }
}

/* Location:
 * Qualified Name:     amj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */