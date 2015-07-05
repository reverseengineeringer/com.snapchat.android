import org.json.JSONException;
import org.json.JSONObject;

public final class bsz$a
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

/* Location:
 * Qualified Name:     bsz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */