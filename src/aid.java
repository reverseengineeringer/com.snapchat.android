import org.json.JSONArray;
import org.json.JSONObject;

final class aid
{
  final String a;
  JSONObject b;
  
  aid(String paramString)
  {
    a = paramString;
    b = new JSONObject();
  }
  
  final String a()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("messageType", a);
    if ((b.names() != null) && (b.names().length() > 0)) {
      localJSONObject.put("meta", b);
    }
    return localJSONObject.toString();
  }
}

/* Location:
 * Qualified Name:     aid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */