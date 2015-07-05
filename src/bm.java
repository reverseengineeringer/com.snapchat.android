import java.util.HashMap;
import java.util.Map;

public final class bm
{
  public static bm a;
  public final Map<bl, String> b = new HashMap();
  
  public bm()
  {
    bl localbl = bl.c;
    if (localbl == null) {
      throw new IllegalArgumentException("springConfig is required");
    }
    if (!b.containsKey(localbl)) {
      b.put(localbl, "default config");
    }
  }
}

/* Location:
 * Qualified Name:     bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */