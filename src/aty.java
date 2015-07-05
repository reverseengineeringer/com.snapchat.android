import com.google.gson.Gson;
import java.lang.reflect.Type;
import java.util.Map;

public final class aty
{
  public static final String EMPTY_SERIALIZED_MAP = "{}";
  private static final Gson sGson = ;
  
  @cgb
  public static <T> T a(@cgb String paramString, @cgb Type paramType)
  {
    return (T)sGson.fromJson(paramString, paramType);
  }
  
  @cgb
  public static String a(@cgb Map paramMap)
  {
    return sGson.toJson(paramMap);
  }
}

/* Location:
 * Qualified Name:     aty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */