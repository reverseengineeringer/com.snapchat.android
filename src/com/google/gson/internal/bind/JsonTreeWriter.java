package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class JsonTreeWriter
  extends JsonWriter
{
  private static final Writer a = new Writer()
  {
    public final void close()
    {
      throw new AssertionError();
    }
    
    public final void flush()
    {
      throw new AssertionError();
    }
    
    public final void write(char[] paramAnonymousArrayOfChar, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      throw new AssertionError();
    }
  };
  private static final JsonPrimitive b = new JsonPrimitive("closed");
  private final List<JsonElement> c = new ArrayList();
  private String d;
  private JsonElement e = JsonNull.INSTANCE;
  
  public JsonTreeWriter()
  {
    super(a);
  }
  
  private JsonElement a()
  {
    return (JsonElement)c.get(c.size() - 1);
  }
  
  private void a(JsonElement paramJsonElement)
  {
    if (d != null)
    {
      if ((!paramJsonElement.isJsonNull()) || (getSerializeNulls())) {
        ((JsonObject)a()).add(d, paramJsonElement);
      }
      d = null;
      return;
    }
    if (c.isEmpty())
    {
      e = paramJsonElement;
      return;
    }
    JsonElement localJsonElement = a();
    if ((localJsonElement instanceof JsonArray))
    {
      ((JsonArray)localJsonElement).add(paramJsonElement);
      return;
    }
    throw new IllegalStateException();
  }
  
  public final JsonWriter beginArray()
  {
    JsonArray localJsonArray = new JsonArray();
    a(localJsonArray);
    c.add(localJsonArray);
    return this;
  }
  
  public final JsonWriter beginObject()
  {
    JsonObject localJsonObject = new JsonObject();
    a(localJsonObject);
    c.add(localJsonObject);
    return this;
  }
  
  public final void close()
  {
    if (!c.isEmpty()) {
      throw new IOException("Incomplete document");
    }
    c.add(b);
  }
  
  public final JsonWriter endArray()
  {
    if ((c.isEmpty()) || (d != null)) {
      throw new IllegalStateException();
    }
    if ((a() instanceof JsonArray))
    {
      c.remove(c.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final JsonWriter endObject()
  {
    if ((c.isEmpty()) || (d != null)) {
      throw new IllegalStateException();
    }
    if ((a() instanceof JsonObject))
    {
      c.remove(c.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final void flush() {}
  
  public final JsonElement get()
  {
    if (!c.isEmpty()) {
      throw new IllegalStateException("Expected one JSON element but was " + c);
    }
    return e;
  }
  
  public final JsonWriter name(String paramString)
  {
    if ((c.isEmpty()) || (d != null)) {
      throw new IllegalStateException();
    }
    if ((a() instanceof JsonObject))
    {
      d = paramString;
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final JsonWriter nullValue()
  {
    a(JsonNull.INSTANCE);
    return this;
  }
  
  public final JsonWriter value(double paramDouble)
  {
    if ((!isLenient()) && ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble)))) {
      throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramDouble);
    }
    a(new JsonPrimitive(Double.valueOf(paramDouble)));
    return this;
  }
  
  public final JsonWriter value(long paramLong)
  {
    a(new JsonPrimitive(Long.valueOf(paramLong)));
    return this;
  }
  
  public final JsonWriter value(Number paramNumber)
  {
    if (paramNumber == null) {
      return nullValue();
    }
    if (!isLenient())
    {
      double d1 = paramNumber.doubleValue();
      if ((Double.isNaN(d1)) || (Double.isInfinite(d1))) {
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber);
      }
    }
    a(new JsonPrimitive(paramNumber));
    return this;
  }
  
  public final JsonWriter value(String paramString)
  {
    if (paramString == null) {
      return nullValue();
    }
    a(new JsonPrimitive(paramString));
    return this;
  }
  
  public final JsonWriter value(boolean paramBoolean)
  {
    a(new JsonPrimitive(Boolean.valueOf(paramBoolean)));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.JsonTreeWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */