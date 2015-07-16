import org.json.JSONException;
import org.json.JSONObject;

public final class bua
  implements bsn
{
  public boolean a;
  public boolean b;
  public int c;
  public int d;
  public int e;
  public String f;
  public String g;
  
  public bua()
  {
    a = false;
    b = false;
    c = 0;
    d = 5;
    e = 5;
    f = "Would you mind taking a second to rate my app?  I would really appreciate it!";
    g = "Rate My App";
  }
  
  public bua(bua parambua)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
  }
  
  public bua(JSONObject paramJSONObject)
  {
    a = paramJSONObject.optBoolean("rateMyAppEnabled", false);
    b = paramJSONObject.optBoolean("hasRatedApp", false);
    c = paramJSONObject.optInt("numAppLoads", 0);
    d = paramJSONObject.optInt("rateAfterNumLoads", 5);
    e = paramJSONObject.optInt("remindAfterNumLoads", 5);
    f = paramJSONObject.optString("rateAppMessage", "Would you mind taking a second to rate my app?  I would really appreciate it!");
    g = paramJSONObject.optString("rateAppTitle", "Rate My App");
  }
  
  private JSONObject d()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("rateAfterNumLoads", d).put("remindAfterNumLoads", e).put("rateAppMessage", f).put("rateAppTitle", g).put("hasRatedApp", b).put("numAppLoads", c).put("rateMyAppEnabled", a);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public final void a()
  {
    try
    {
      a = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(brx parambrx, String paramString1, String paramString2)
  {
    try
    {
      parambrx.a(paramString1, paramString2, d().toString());
      return;
    }
    finally
    {
      parambrx = finally;
      throw parambrx;
    }
  }
  
  public final void c()
  {
    try
    {
      a = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static final class a
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
}

/* Location:
 * Qualified Name:     bua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */