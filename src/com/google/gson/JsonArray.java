package com.google.gson;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class JsonArray
  extends JsonElement
  implements Iterable<JsonElement>
{
  private final List<JsonElement> a = new ArrayList();
  
  public final void add(JsonElement paramJsonElement)
  {
    Object localObject = paramJsonElement;
    if (paramJsonElement == null) {
      localObject = JsonNull.INSTANCE;
    }
    a.add(localObject);
  }
  
  public final void addAll(JsonArray paramJsonArray)
  {
    a.addAll(a);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof JsonArray)) && (a.equals(a)));
  }
  
  public final JsonElement get(int paramInt)
  {
    return (JsonElement)a.get(paramInt);
  }
  
  public final BigDecimal getAsBigDecimal()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsBigDecimal();
    }
    throw new IllegalStateException();
  }
  
  public final BigInteger getAsBigInteger()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsBigInteger();
    }
    throw new IllegalStateException();
  }
  
  public final boolean getAsBoolean()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsBoolean();
    }
    throw new IllegalStateException();
  }
  
  public final byte getAsByte()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsByte();
    }
    throw new IllegalStateException();
  }
  
  public final char getAsCharacter()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsCharacter();
    }
    throw new IllegalStateException();
  }
  
  public final double getAsDouble()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsDouble();
    }
    throw new IllegalStateException();
  }
  
  public final float getAsFloat()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsFloat();
    }
    throw new IllegalStateException();
  }
  
  public final int getAsInt()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsInt();
    }
    throw new IllegalStateException();
  }
  
  public final long getAsLong()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsLong();
    }
    throw new IllegalStateException();
  }
  
  public final Number getAsNumber()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsNumber();
    }
    throw new IllegalStateException();
  }
  
  public final short getAsShort()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsShort();
    }
    throw new IllegalStateException();
  }
  
  public final String getAsString()
  {
    if (a.size() == 1) {
      return ((JsonElement)a.get(0)).getAsString();
    }
    throw new IllegalStateException();
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final Iterator<JsonElement> iterator()
  {
    return a.iterator();
  }
  
  public final int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     com.google.gson.JsonArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */