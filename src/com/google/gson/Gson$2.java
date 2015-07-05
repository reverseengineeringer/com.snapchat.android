package com.google.gson;

import java.lang.reflect.Type;

final class Gson$2
  implements JsonSerializationContext
{
  Gson$2(Gson paramGson) {}
  
  public final JsonElement serialize(Object paramObject)
  {
    return a.toJsonTree(paramObject);
  }
  
  public final JsonElement serialize(Object paramObject, Type paramType)
  {
    return a.toJsonTree(paramObject, paramType);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.Gson.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */