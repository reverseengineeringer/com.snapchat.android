import org.json.JSONException;
import org.json.JSONObject;

public final class bsy$a
{
  public static bsy a(bqw parambqw)
  {
    Object localObject1 = null;
    Object localObject2 = parambqw.a(jn, jo);
    if (localObject2 != null) {}
    for (;;)
    {
      try
      {
        localObject2 = new JSONObject((String)localObject2);
        localObject1 = localObject2;
      }
      catch (JSONException localJSONException)
      {
        btd.b();
        continue;
        boolean bool = parambqw.c(mn, mo);
        continue;
        bool = false;
        continue;
      }
      if (localObject1 != null)
      {
        bool = ((JSONObject)localObject1).optBoolean("optOutStatusSet", false);
        if (bool)
        {
          bool = ((JSONObject)localObject1).optBoolean("optOutStatus", false);
          return new bsy(bool);
        }
      }
      localObject1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     bsy.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */