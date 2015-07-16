import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public final class es<T>
  extends TypeAdapter<T>
{
  private final Gson a;
  private final TypeAdapter<T> b;
  private final Type c;
  
  public es(Gson paramGson, TypeAdapter<T> paramTypeAdapter, Type paramType)
  {
    a = paramGson;
    b = paramTypeAdapter;
    c = paramType;
  }
  
  public final T read(JsonReader paramJsonReader)
  {
    return (T)b.read(paramJsonReader);
  }
  
  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    TypeAdapter localTypeAdapter = b;
    Type localType = c;
    Object localObject = localType;
    if (paramT != null) {
      if ((localType != Object.class) && (!(localType instanceof TypeVariable)))
      {
        localObject = localType;
        if (!(localType instanceof Class)) {}
      }
      else
      {
        localObject = paramT.getClass();
      }
    }
    if (localObject != c)
    {
      localTypeAdapter = a.getAdapter(TypeToken.get((Type)localObject));
      localObject = localTypeAdapter;
      if ((localTypeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter))
      {
        localObject = localTypeAdapter;
        if ((b instanceof ReflectiveTypeAdapterFactory.Adapter)) {}
      }
    }
    for (localObject = b;; localObject = localTypeAdapter)
    {
      ((TypeAdapter)localObject).write(paramJsonWriter, paramT);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */