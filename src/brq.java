import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

public final class brq
  extends bri
{
  private brq(File paramFile)
  {
    super(paramFile);
  }
  
  public final Object a()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject((String)super.a());
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public static final class a
    extends brx
  {
    public final bri a(File paramFile)
    {
      return new brq(paramFile, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     brq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */