import org.json.JSONException;
import org.json.JSONObject;

public final class bsz
  implements brm
{
  public boolean a;
  public boolean b;
  public int c;
  public int d;
  public int e;
  public String f;
  public String g;
  
  public bsz()
  {
    a = false;
    b = false;
    c = 0;
    d = 5;
    e = 5;
    f = "Would you mind taking a second to rate my app?  I would really appreciate it!";
    g = "Rate My App";
  }
  
  public bsz(bsz parambsz)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
  }
  
  public bsz(JSONObject paramJSONObject)
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
  
  public final void a(bqw parambqw, String paramString1, String paramString2)
  {
    try
    {
      parambqw.a(paramString1, paramString2, d().toString());
      return;
    }
    finally
    {
      parambqw = finally;
      throw parambqw;
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
    public static bsz a(bqw parambqw, String paramString1, String paramString2)
    {
      Object localObject = null;
      parambqw = parambqw.a(paramString1, paramString2);
      if (parambqw != null) {}
      try
      {
        for (parambqw = new JSONObject(parambqw); parambqw != null; parambqw = null) {
          return new bsz(parambqw);
        }
      }
      catch (JSONException parambqw)
      {
        for (;;)
        {
          btd.b();
          parambqw = (bqw)localObject;
        }
      }
      return new bsz();
    }
  }
}

/* Location:
 * Qualified Name:     bsz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */