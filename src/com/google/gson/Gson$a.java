package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

final class Gson$a<T>
  extends TypeAdapter<T>
{
  TypeAdapter<T> a;
  
  public final T read(JsonReader paramJsonReader)
  {
    if (a == null) {
      throw new IllegalStateException();
    }
    return (T)a.read(paramJsonReader);
  }
  
  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (a == null) {
      throw new IllegalStateException();
    }
    a.write(paramJsonWriter, paramT);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.Gson.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */