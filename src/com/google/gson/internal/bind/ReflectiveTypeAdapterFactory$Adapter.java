package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory$Adapter<T>
  extends TypeAdapter<T>
{
  private final ObjectConstructor<T> a;
  private final Map<String, ReflectiveTypeAdapterFactory.a> b;
  
  private ReflectiveTypeAdapterFactory$Adapter(ObjectConstructor<T> paramObjectConstructor, Map<String, ReflectiveTypeAdapterFactory.a> paramMap)
  {
    a = paramObjectConstructor;
    b = paramMap;
  }
  
  public final T read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    Object localObject1 = a.construct();
    try
    {
      paramJsonReader.beginObject();
      for (;;)
      {
        if (!paramJsonReader.hasNext()) {
          break label103;
        }
        localObject2 = paramJsonReader.nextName();
        localObject2 = (ReflectiveTypeAdapterFactory.a)b.get(localObject2);
        if ((localObject2 != null) && (i)) {
          break;
        }
        paramJsonReader.skipValue();
      }
    }
    catch (IllegalStateException paramJsonReader)
    {
      for (;;)
      {
        Object localObject2;
        throw new JsonSyntaxException(paramJsonReader);
        ((ReflectiveTypeAdapterFactory.a)localObject2).a(paramJsonReader, localObject1);
      }
    }
    catch (IllegalAccessException paramJsonReader)
    {
      throw new AssertionError(paramJsonReader);
    }
    label103:
    paramJsonReader.endObject();
    return (T)localObject1;
  }
  
  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginObject();
    try
    {
      Iterator localIterator = b.values().iterator();
      while (localIterator.hasNext())
      {
        ReflectiveTypeAdapterFactory.a locala = (ReflectiveTypeAdapterFactory.a)localIterator.next();
        if (h)
        {
          paramJsonWriter.name(g);
          locala.a(paramJsonWriter, paramT);
        }
      }
      paramJsonWriter.endObject();
    }
    catch (IllegalAccessException paramJsonWriter)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */