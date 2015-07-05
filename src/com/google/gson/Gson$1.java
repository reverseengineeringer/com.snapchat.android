package com.google.gson;

import java.lang.reflect.Type;

final class Gson$1
  implements JsonDeserializationContext
{
  Gson$1(Gson paramGson) {}
  
  public final <T> T deserialize(JsonElement paramJsonElement, Type paramType)
  {
    return (T)a.fromJson(paramJsonElement, paramType);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.Gson.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */