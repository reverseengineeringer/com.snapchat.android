package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonObject
  extends JsonElement
{
  private final LinkedTreeMap<String, JsonElement> a = new LinkedTreeMap();
  
  private static JsonElement a(Object paramObject)
  {
    if (paramObject == null) {
      return JsonNull.INSTANCE;
    }
    return new JsonPrimitive(paramObject);
  }
  
  public final void add(String paramString, JsonElement paramJsonElement)
  {
    Object localObject = paramJsonElement;
    if (paramJsonElement == null) {
      localObject = JsonNull.INSTANCE;
    }
    a.put(paramString, localObject);
  }
  
  public final void addProperty(String paramString, Boolean paramBoolean)
  {
    add(paramString, a(paramBoolean));
  }
  
  public final void addProperty(String paramString, Character paramCharacter)
  {
    add(paramString, a(paramCharacter));
  }
  
  public final void addProperty(String paramString, Number paramNumber)
  {
    add(paramString, a(paramNumber));
  }
  
  public final void addProperty(String paramString1, String paramString2)
  {
    add(paramString1, a(paramString2));
  }
  
  public final Set<Map.Entry<String, JsonElement>> entrySet()
  {
    return a.entrySet();
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof JsonObject)) && (a.equals(a)));
  }
  
  public final JsonElement get(String paramString)
  {
    return (JsonElement)a.get(paramString);
  }
  
  public final JsonArray getAsJsonArray(String paramString)
  {
    return (JsonArray)a.get(paramString);
  }
  
  public final JsonObject getAsJsonObject(String paramString)
  {
    return (JsonObject)a.get(paramString);
  }
  
  public final JsonPrimitive getAsJsonPrimitive(String paramString)
  {
    return (JsonPrimitive)a.get(paramString);
  }
  
  public final boolean has(String paramString)
  {
    return a.containsKey(paramString);
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final JsonElement remove(String paramString)
  {
    return (JsonElement)a.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.JsonObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */