import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

public final class bsr
  extends bsj
{
  private bsr(File paramFile)
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
    extends bsy
  {
    public final bsj a(File paramFile)
    {
      return new bsr(paramFile, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     bsr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */