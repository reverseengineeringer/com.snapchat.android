import java.util.Comparator;
import org.json.JSONException;
import org.json.JSONObject;

final class bxn$1
  implements Comparator<JSONObject>
{
  bxn$1(bxn parambxn) {}
  
  private static int a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    try
    {
      int i = paramJSONObject1.getInt("version");
      int j = paramJSONObject2.getInt("version");
      if (i > j) {}
      return 0;
    }
    catch (NullPointerException paramJSONObject1)
    {
      return 0;
    }
    catch (JSONException paramJSONObject1) {}
    return 0;
  }
}

/* Location:
 * Qualified Name:     bxn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */