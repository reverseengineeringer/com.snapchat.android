import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

public final class bsg
{
  public Map a = new HashMap();
  
  public bsg(bqu parambqu)
  {
    a.put("app_id", parambqu.a());
    a.put("hashed_device_id", parambqu.c());
    a.put("library_version", "4.5.4");
  }
  
  public final bsg a(String paramString1, String paramString2)
  {
    a.put(paramString1, paramString2);
    return this;
  }
  
  public final bsg a(String paramString, JSONArray paramJSONArray)
  {
    a.put(paramString, paramJSONArray);
    return this;
  }
}

/* Location:
 * Qualified Name:     bsg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */