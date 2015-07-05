import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class brl
  implements brm
{
  private Map a = new HashMap();
  
  public final brl a(brn parambrn)
  {
    if (parambrn.b() != null) {
      a.put(parambrn.a(), parambrn.b());
    }
    return this;
  }
  
  public final JSONObject a()
  {
    return new JSONObject(a);
  }
}

/* Location:
 * Qualified Name:     brl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */