package com.google.gson.internal;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

final class Excluder$1
  extends TypeAdapter<T>
{
  private TypeAdapter<T> f;
  
  Excluder$1(Excluder paramExcluder, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, TypeToken paramTypeToken) {}
  
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
  
  public final T read(JsonReader paramJsonReader)
  {
    if (a)
    {
      paramJsonReader.skipValue();
      return null;
    }
    return (T)a().read(paramJsonReader);
  }
  
  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (b)
    {
      paramJsonWriter.nullValue();
      return;
    }
    a().write(paramJsonWriter, paramT);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.Excluder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */