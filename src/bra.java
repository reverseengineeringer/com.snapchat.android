import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bra
{
  JSONObject a = new JSONObject();
  
  private bra(brv parambrv, List paramList)
  {
    paramList.size();
    JSONArray localJSONArray1 = new JSONArray();
    JSONArray localJSONArray2 = new JSONArray();
    localJSONArray2.put(parambrv.a());
    localJSONArray2.put(parambrv.b());
    localJSONArray2.put(parambrv.c());
    localJSONArray2.put("4.5.4");
    localJSONArray2.put(parambrv.d());
    localJSONArray1.put(localJSONArray2);
    localJSONArray2 = new JSONArray();
    localJSONArray2.put(buk.a.a());
    localJSONArray2.put(parambrv.e());
    localJSONArray2.put(parambrv.g());
    localJSONArray2.put(parambrv.f());
    localJSONArray2.put(parambrv.h());
    localJSONArray1.put(localJSONArray2);
    parambrv = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      parambrv.put(((btc)paramList.next()).e());
    }
    localJSONArray1.put(parambrv);
    a.put("d", localJSONArray1);
  }
  
  public static bra a(brv parambrv, List paramList)
  {
    try
    {
      parambrv = new bra(parambrv, paramList);
      return parambrv;
    }
    catch (JSONException parambrv)
    {
      new StringBuilder("Unable to generate APM request's JSON: ").append(parambrv);
      bue.e();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */