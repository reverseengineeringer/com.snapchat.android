import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import java.lang.reflect.Type;

public final class aur
{
  private static final String TAG = "JsonSerializer";
  protected final Gson mGson;
  
  public aur()
  {
    this(new GsonBuilder().create());
  }
  
  private aur(Gson paramGson)
  {
    mGson = paramGson;
  }
  
  @chd
  public final <T> T a(@chd String paramString, @chc Class<T> paramClass, boolean paramBoolean)
  {
    try
    {
      paramString = mGson.fromJson(paramString, paramClass);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      if (paramBoolean) {
        return null;
      }
      throw paramString;
    }
    catch (StackOverflowError paramString)
    {
      for (;;) {}
    }
  }
  
  @chd
  public final <T> T a(@chd String paramString, @chc Type paramType)
  {
    try
    {
      paramString = mGson.fromJson(paramString, paramType);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      throw paramString;
    }
    catch (StackOverflowError paramString)
    {
      for (;;) {}
    }
  }
  
  @chc
  public final String a(@chd Object paramObject)
  {
    try
    {
      paramObject = mGson.toJson(paramObject);
      return (String)paramObject;
    }
    catch (UnsupportedOperationException paramObject)
    {
      throw new UnsupportedOperationException("Failed to serialize object.", (Throwable)paramObject);
    }
  }
  
  @chd
  public final String a(@chd Object paramObject, @chc Type paramType)
  {
    try
    {
      paramObject = mGson.toJson(paramObject, paramType);
      return (String)paramObject;
    }
    catch (UnsupportedOperationException paramObject)
    {
      throw new UnsupportedOperationException("Failed to serialize object.", (Throwable)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     aur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */