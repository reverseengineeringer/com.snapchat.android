import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;

public final class bsq
  extends bsj
{
  private bsq(File paramFile)
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
    extends bsy
  {
    public final bsj a(File paramFile)
    {
      return new bsq(paramFile, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     bsq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */