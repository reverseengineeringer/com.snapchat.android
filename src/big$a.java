import com.google.gson.annotations.SerializedName;
import java.util.Locale;

public enum big$a
{
  LINK("link"),  UNRECOGNIZED_VALUE("UNRECOGNIZED_VALUE");
  
  private final String value;
  
  private big$a(String paramString)
  {
    value = paramString;
  }
  
  public static a a(String paramString)
  {
    try
    {
      paramString = valueOf(paramString.toUpperCase(Locale.US));
      return paramString;
    }
    catch (Exception paramString) {}
    return UNRECOGNIZED_VALUE;
  }
  
  public final String toString()
  {
    return value;
  }
}

/* Location:
 * Qualified Name:     big.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */