import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.reflect.TypeToken;

final class ei$a
  implements TypeAdapterFactory
{
  private final TypeToken<?> a;
  private final boolean b;
  private final Class<?> c;
  private final JsonSerializer<?> d;
  private final JsonDeserializer<?> e;
  
  private ei$a(Object paramObject, TypeToken<?> paramTypeToken, boolean paramBoolean, Class<?> paramClass)
  {
    JsonSerializer localJsonSerializer;
    if ((paramObject instanceof JsonSerializer))
    {
      localJsonSerializer = (JsonSerializer)paramObject;
      d = localJsonSerializer;
      if (!(paramObject instanceof JsonDeserializer)) {
        break label85;
      }
      paramObject = (JsonDeserializer)paramObject;
      label35:
      e = ((JsonDeserializer)paramObject);
      if ((d == null) && (e == null)) {
        break label90;
      }
    }
    label85:
    label90:
    for (boolean bool = true;; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      a = paramTypeToken;
      b = paramBoolean;
      c = paramClass;
      return;
      localJsonSerializer = null;
      break;
      paramObject = null;
      break label35;
    }
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    boolean bool;
    if (a != null) {
      if ((a.equals(paramTypeToken)) || ((b) && (a.getType() == paramTypeToken.getRawType()))) {
        bool = true;
      }
    }
    while (bool)
    {
      return new ei(d, e, paramGson, paramTypeToken, this, (byte)0);
      bool = false;
      continue;
      bool = c.isAssignableFrom(paramTypeToken.getRawType());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     ei.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */