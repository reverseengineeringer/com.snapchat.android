import com.google.gson.Gson;
import java.lang.reflect.Type;
import java.util.Map;

public final class auw
{
  public static final String EMPTY_SERIALIZED_MAP = "{}";
  private static final Gson sGson = ;
  
  @chc
  public static <T> T a(@chc String paramString, @chc Type paramType)
  {
    return (T)sGson.fromJson(paramString, paramType);
  }
  
  @chc
  public static String a(@chc Map paramMap)
  {
    return sGson.toJson(paramMap);
  }
}

/* Location:
 * Qualified Name:     auw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */