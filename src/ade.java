import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class ade
{
  private static ade b = new ade();
  public Map<String, bjx> a = new ConcurrentHashMap();
  
  public static ade a()
  {
    return b;
  }
  
  public final void a(@cgb String paramString, @cgc bjx parambjx)
  {
    if (parambjx == null)
    {
      a.remove(paramString);
      return;
    }
    a.put(paramString, parambjx);
  }
}

/* Location:
 * Qualified Name:     ade
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */