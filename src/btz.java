import org.json.JSONException;
import org.json.JSONObject;

public final class btz
{
  private boolean a;
  private boolean b;
  
  public btz(boolean paramBoolean)
  {
    a = paramBoolean;
    b = true;
  }
  
  public final boolean a()
  {
    try
    {
      boolean bool = a;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static final class a
  {
    public static btz a(brx parambrx)
    {
      Object localObject1 = null;
      Object localObject2 = parambrx.a(jn, jo);
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
          bue.b();
          continue;
          boolean bool = parambrx.c(mn, mo);
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
            return new btz(bool);
          }
        }
        localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     btz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */