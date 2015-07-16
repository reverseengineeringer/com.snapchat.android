package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Types;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import es;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.util.ArrayList;
import java.util.List;

public final class ArrayTypeAdapter<E>
  extends TypeAdapter<Object>
{
  public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory()
  {
    public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
    {
      paramAnonymousTypeToken = paramAnonymousTypeToken.getType();
      if ((!(paramAnonymousTypeToken instanceof GenericArrayType)) && ((!(paramAnonymousTypeToken instanceof Class)) || (!((Class)paramAnonymousTypeToken).isArray()))) {
        return null;
      }
      paramAnonymousTypeToken = .Gson.Types.getArrayComponentType(paramAnonymousTypeToken);
      return new ArrayTypeAdapter(paramAnonymousGson, paramAnonymousGson.getAdapter(TypeToken.get(paramAnonymousTypeToken)), .Gson.Types.getRawType(paramAnonymousTypeToken));
    }
  };
  private final Class<E> a;
  private final TypeAdapter<E> b;
  
  public ArrayTypeAdapter(Gson paramGson, TypeAdapter<E> paramTypeAdapter, Class<E> paramClass)
  {
    b = new es(paramGson, paramTypeAdapter, paramClass);
    a = paramClass;
  }
  
  public final Object read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.beginArray();
    while (paramJsonReader.hasNext()) {
      localArrayList.add(b.read(paramJsonReader));
    }
    paramJsonReader.endArray();
    paramJsonReader = Array.newInstance(a, localArrayList.size());
    int i = 0;
    while (i < localArrayList.size())
    {
      Array.set(paramJsonReader, i, localArrayList.get(i));
      i += 1;
    }
    return paramJsonReader;
  }
  
  public final void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    if (paramObject == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginArray();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      b.write(paramJsonWriter, localObject);
      i += 1;
    }
    paramJsonWriter.endArray();
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.ArrayTypeAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */