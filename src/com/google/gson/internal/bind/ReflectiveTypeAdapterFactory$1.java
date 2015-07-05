package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import ej;
import java.lang.reflect.Field;

final class ReflectiveTypeAdapterFactory$1
  extends ReflectiveTypeAdapterFactory.a
{
  final TypeAdapter<?> a = b.getAdapter(c);
  
  ReflectiveTypeAdapterFactory$1(ReflectiveTypeAdapterFactory paramReflectiveTypeAdapterFactory, String paramString, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, TypeToken paramTypeToken, Field paramField, boolean paramBoolean3)
  {
    super(paramString, paramBoolean1, paramBoolean2);
  }
  
  final void a(JsonReader paramJsonReader, Object paramObject)
  {
    paramJsonReader = a.read(paramJsonReader);
    if ((paramJsonReader != null) || (!e)) {
      d.set(paramObject, paramJsonReader);
    }
  }
  
  final void a(JsonWriter paramJsonWriter, Object paramObject)
  {
    paramObject = d.get(paramObject);
    new ej(b, a, c.getType()).write(paramJsonWriter, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */