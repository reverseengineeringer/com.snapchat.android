import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class aee
{
  private static aee b = new aee();
  public Map<String, bky> a = new ConcurrentHashMap();
  
  public static aee a()
  {
    return b;
  }
  
  public final void a(@chc String paramString, @chd bky parambky)
  {
    if (parambky == null)
    {
      a.remove(paramString);
      return;
    }
    a.put(paramString, parambky);
  }
}

/* Location:
 * Qualified Name:     aee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */