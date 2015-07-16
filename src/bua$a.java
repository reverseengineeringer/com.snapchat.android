import org.json.JSONException;
import org.json.JSONObject;

public final class bua$a
{
  public static bua a(brx parambrx, String paramString1, String paramString2)
  {
    Object localObject = null;
    parambrx = parambrx.a(paramString1, paramString2);
    if (parambrx != null) {}
    try
    {
      for (parambrx = new JSONObject(parambrx); parambrx != null; parambrx = null) {
        return new bua(parambrx);
      }
    }
    catch (JSONException parambrx)
    {
      for (;;)
      {
        bue.b();
        parambrx = (brx)localObject;
      }
    }
    return new bua();
  }
}

/* Location:
 * Qualified Name:     bua.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */