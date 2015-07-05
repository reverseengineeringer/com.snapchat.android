import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;

public final class brp
  extends bri
{
  private brp(File paramFile)
  {
    super(paramFile);
  }
  
  public final Object a()
  {
    try
    {
      JSONArray localJSONArray = new JSONArray((String)super.a());
      return localJSONArray;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public static final class a
    extends brx
  {
    public final bri a(File paramFile)
    {
      return new brp(paramFile, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     brp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */