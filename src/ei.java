import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

public final class ei<T>
  extends TypeAdapter<T>
{
  private final JsonSerializer<T> a;
  private final JsonDeserializer<T> b;
  private final Gson c;
  private final TypeToken<T> d;
  private final TypeAdapterFactory e;
  private TypeAdapter<T> f;
  
  private ei(JsonSerializer<T> paramJsonSerializer, JsonDeserializer<T> paramJsonDeserializer, Gson paramGson, TypeToken<T> paramTypeToken, TypeAdapterFactory paramTypeAdapterFactory)
  {
    a = paramJsonSerializer;
    b = paramJsonDeserializer;
    c = paramGson;
    d = paramTypeToken;
    e = paramTypeAdapterFactory;
  }
  
  private TypeAdapter<T> a()
  {
    TypeAdapter localTypeAdapter = f;
    if (localTypeAdapter != null) {
      return localTypeAdapter;
    }
    localTypeAdapter = c.getDelegateAdapter(e, d);
    f = localTypeAdapter;
    return localTypeAdapter;
  }
  
  public static TypeAdapterFactory a(TypeToken<?> paramTypeToken, Object paramObject)
  {
    return new ei.a(paramObject, paramTypeToken, false, null, (byte)0);
  }
  
  public static TypeAdapterFactory a(Class<?> paramClass, Object paramObject)
  {
    return new ei.a(paramObject, null, false, paramClass, (byte)0);
  }
  
  public static TypeAdapterFactory b(TypeToken<?> paramTypeToken, Object paramObject)
  {
    if (paramTypeToken.getType() == paramTypeToken.getRawType()) {}
    for (boolean bool = true;; bool = false) {
      return new ei.a(paramObject, paramTypeToken, bool, null, (byte)0);
    }
  }
  
  public final T read(JsonReader paramJsonReader)
  {
    if (b == null) {
      return (T)a().read(paramJsonReader);
    }
    paramJsonReader = Streams.parse(paramJsonReader);
    if (paramJsonReader.isJsonNull()) {
      return null;
    }
    return (T)b.deserialize(paramJsonReader, d.getType(), c.a);
  }
  
  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (a == null)
    {
      a().write(paramJsonWriter, paramT);
      return;
    }
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    Streams.write(a.serialize(paramT, d.getType(), c.b), paramJsonWriter);
  }
  
  static final class a
    implements TypeAdapterFactory
  {
    private final TypeToken<?> a;
    private final boolean b;
    private final Class<?> c;
    private final JsonSerializer<?> d;
    private final JsonDeserializer<?> e;
    
    private a(Object paramObject, TypeToken<?> paramTypeToken, boolean paramBoolean, Class<?> paramClass)
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
}

/* Location:
 * Qualified Name:     ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */