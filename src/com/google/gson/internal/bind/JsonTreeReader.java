package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonTreeReader
  extends JsonReader
{
  private static final Reader a = new Reader()
  {
    public final void close()
    {
      throw new AssertionError();
    }
    
    public final int read(char[] paramAnonymousArrayOfChar, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      throw new AssertionError();
    }
  };
  private static final Object b = new Object();
  private final List<Object> c = new ArrayList();
  
  public JsonTreeReader(JsonElement paramJsonElement)
  {
    super(a);
    c.add(paramJsonElement);
  }
  
  private Object a()
  {
    return c.get(c.size() - 1);
  }
  
  private void a(JsonToken paramJsonToken)
  {
    if (peek() != paramJsonToken) {
      throw new IllegalStateException("Expected " + paramJsonToken + " but was " + peek());
    }
  }
  
  private Object b()
  {
    return c.remove(c.size() - 1);
  }
  
  public final void beginArray()
  {
    a(JsonToken.BEGIN_ARRAY);
    JsonArray localJsonArray = (JsonArray)a();
    c.add(localJsonArray.iterator());
  }
  
  public final void beginObject()
  {
    a(JsonToken.BEGIN_OBJECT);
    JsonObject localJsonObject = (JsonObject)a();
    c.add(localJsonObject.entrySet().iterator());
  }
  
  public final void close()
  {
    c.clear();
    c.add(b);
  }
  
  public final void endArray()
  {
    a(JsonToken.END_ARRAY);
    b();
    b();
  }
  
  public final void endObject()
  {
    a(JsonToken.END_OBJECT);
    b();
    b();
  }
  
  public final boolean hasNext()
  {
    JsonToken localJsonToken = peek();
    return (localJsonToken != JsonToken.END_OBJECT) && (localJsonToken != JsonToken.END_ARRAY);
  }
  
  public final boolean nextBoolean()
  {
    a(JsonToken.BOOLEAN);
    return ((JsonPrimitive)b()).getAsBoolean();
  }
  
  public final double nextDouble()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    double d = ((JsonPrimitive)a()).getAsDouble();
    if ((!isLenient()) && ((Double.isNaN(d)) || (Double.isInfinite(d)))) {
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d);
    }
    b();
    return d;
  }
  
  public final int nextInt()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    int i = ((JsonPrimitive)a()).getAsInt();
    b();
    return i;
  }
  
  public final long nextLong()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    long l = ((JsonPrimitive)a()).getAsLong();
    b();
    return l;
  }
  
  public final String nextName()
  {
    a(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)a()).next();
    c.add(localEntry.getValue());
    return (String)localEntry.getKey();
  }
  
  public final void nextNull()
  {
    a(JsonToken.NULL);
    b();
  }
  
  public final String nextString()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.STRING) && (localJsonToken != JsonToken.NUMBER)) {
      throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + localJsonToken);
    }
    return ((JsonPrimitive)b()).getAsString();
  }
  
  public final JsonToken peek()
  {
    Object localObject;
    boolean bool;
    for (;;)
    {
      if (c.isEmpty()) {
        return JsonToken.END_DOCUMENT;
      }
      localObject = a();
      if (!(localObject instanceof Iterator)) {
        break label105;
      }
      bool = c.get(c.size() - 2) instanceof JsonObject;
      localObject = (Iterator)localObject;
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      if (bool) {
        return JsonToken.NAME;
      }
      c.add(((Iterator)localObject).next());
    }
    if (bool) {
      return JsonToken.END_OBJECT;
    }
    return JsonToken.END_ARRAY;
    label105:
    if ((localObject instanceof JsonObject)) {
      return JsonToken.BEGIN_OBJECT;
    }
    if ((localObject instanceof JsonArray)) {
      return JsonToken.BEGIN_ARRAY;
    }
    if ((localObject instanceof JsonPrimitive))
    {
      localObject = (JsonPrimitive)localObject;
      if (((JsonPrimitive)localObject).isString()) {
        return JsonToken.STRING;
      }
      if (((JsonPrimitive)localObject).isBoolean()) {
        return JsonToken.BOOLEAN;
      }
      if (((JsonPrimitive)localObject).isNumber()) {
        return JsonToken.NUMBER;
      }
      throw new AssertionError();
    }
    if ((localObject instanceof JsonNull)) {
      return JsonToken.NULL;
    }
    if (localObject == b) {
      throw new IllegalStateException("JsonReader is closed");
    }
    throw new AssertionError();
  }
  
  public final void promoteNameToValue()
  {
    a(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)a()).next();
    c.add(localEntry.getValue());
    c.add(new JsonPrimitive((String)localEntry.getKey()));
  }
  
  public final void skipValue()
  {
    if (peek() == JsonToken.NAME)
    {
      nextName();
      return;
    }
    b();
  }
  
  public final String toString()
  {
    return getClass().getSimpleName();
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.JsonTreeReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */