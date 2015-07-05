package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ObjectTypeAdapter
  extends TypeAdapter<Object>
{
  public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory()
  {
    public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
    {
      if (paramAnonymousTypeToken.getRawType() == Object.class) {
        return new ObjectTypeAdapter(paramAnonymousGson, (byte)0);
      }
      return null;
    }
  };
  private final Gson a;
  
  private ObjectTypeAdapter(Gson paramGson)
  {
    a = paramGson;
  }
  
  public final Object read(JsonReader paramJsonReader)
  {
    Object localObject = paramJsonReader.peek();
    switch (2.a[localObject.ordinal()])
    {
    default: 
      throw new IllegalStateException();
    case 1: 
      localObject = new ArrayList();
      paramJsonReader.beginArray();
      while (paramJsonReader.hasNext()) {
        ((List)localObject).add(read(paramJsonReader));
      }
      paramJsonReader.endArray();
      return localObject;
    case 2: 
      localObject = new LinkedTreeMap();
      paramJsonReader.beginObject();
      while (paramJsonReader.hasNext()) {
        ((Map)localObject).put(paramJsonReader.nextName(), read(paramJsonReader));
      }
      paramJsonReader.endObject();
      return localObject;
    case 3: 
      return paramJsonReader.nextString();
    case 4: 
      return Double.valueOf(paramJsonReader.nextDouble());
    case 5: 
      return Boolean.valueOf(paramJsonReader.nextBoolean());
    }
    paramJsonReader.nextNull();
    return null;
  }
  
  public final void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    if (paramObject == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    TypeAdapter localTypeAdapter = a.getAdapter(paramObject.getClass());
    if ((localTypeAdapter instanceof ObjectTypeAdapter))
    {
      paramJsonWriter.beginObject();
      paramJsonWriter.endObject();
      return;
    }
    localTypeAdapter.write(paramJsonWriter, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.ObjectTypeAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */