import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class bsm
  implements bsn
{
  private Map a = new HashMap();
  
  public final bsm a(bso parambso)
  {
    if (parambso.b() != null) {
      a.put(parambso.a(), parambso.b());
    }
    return this;
  }
  
  public final JSONObject a()
  {
    return new JSONObject(a);
  }
}

/* Location:
 * Qualified Name:     bsm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */