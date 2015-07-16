import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

public final class bth
{
  public Map a = new HashMap();
  
  public bth(brv parambrv)
  {
    a.put("app_id", parambrv.a());
    a.put("hashed_device_id", parambrv.c());
    a.put("library_version", "4.5.4");
  }
  
  public final bth a(String paramString1, String paramString2)
  {
    a.put(paramString1, paramString2);
    return this;
  }
  
  public final bth a(String paramString, JSONArray paramJSONArray)
  {
    a.put(paramString, paramJSONArray);
    return this;
  }
}

/* Location:
 * Qualified Name:     bth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */