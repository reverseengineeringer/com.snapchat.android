import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
import java.lang.reflect.Type;

public final class att
{
  private static final String TAG = "JsonSerializer";
  protected final Gson mGson;
  
  public att()
  {
    this(new GsonBuilder().create());
  }
  
  private att(Gson paramGson)
  {
    mGson = paramGson;
  }
  
  @cgc
  public final <T> T a(@cgc String paramString, @cgb Class<T> paramClass, boolean paramBoolean)
  {
    try
    {
      paramString = mGson.fromJson(paramString, paramClass);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      Timber.a("JsonSerializer", paramString);
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
  
  @cgc
  public final <T> T a(@cgc String paramString, @cgb Type paramType)
  {
    try
    {
      paramString = mGson.fromJson(paramString, paramType);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      Timber.a("JsonSerializer", paramString);
      throw paramString;
    }
    catch (StackOverflowError paramString)
    {
      for (;;) {}
    }
  }
  
  @cgb
  public final String a(@cgc Object paramObject)
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
  
  @cgc
  public final String a(@cgc Object paramObject, @cgb Type paramType)
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
 * Qualified Name:     att
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */