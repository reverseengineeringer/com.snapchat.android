import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bpz
{
  JSONObject a = new JSONObject();
  
  private bpz(bqu parambqu, List paramList)
  {
    paramList.size();
    JSONArray localJSONArray1 = new JSONArray();
    JSONArray localJSONArray2 = new JSONArray();
    localJSONArray2.put(parambqu.a());
    localJSONArray2.put(parambqu.b());
    localJSONArray2.put(parambqu.c());
    localJSONArray2.put("4.5.4");
    localJSONArray2.put(parambqu.d());
    localJSONArray1.put(localJSONArray2);
    localJSONArray2 = new JSONArray();
    localJSONArray2.put(btj.a.a());
    localJSONArray2.put(parambqu.e());
    localJSONArray2.put(parambqu.g());
    localJSONArray2.put(parambqu.f());
    localJSONArray2.put(parambqu.h());
    localJSONArray1.put(localJSONArray2);
    parambqu = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      parambqu.put(((bsb)paramList.next()).e());
    }
    localJSONArray1.put(parambqu);
    a.put("d", localJSONArray1);
  }
  
  public static bpz a(bqu parambqu, List paramList)
  {
    try
    {
      parambqu = new bpz(parambqu, paramList);
      return parambqu;
    }
    catch (JSONException parambqu)
    {
      new StringBuilder("Unable to generate APM request's JSON: ").append(parambqu);
      btd.e();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bpz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */