package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class JsonPrimitive
  extends JsonElement
{
  private static final Class<?>[] a = { Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  private Object b;
  
  public JsonPrimitive(Boolean paramBoolean)
  {
    a(paramBoolean);
  }
  
  public JsonPrimitive(Character paramCharacter)
  {
    a(paramCharacter);
  }
  
  public JsonPrimitive(Number paramNumber)
  {
    a(paramNumber);
  }
  
  JsonPrimitive(Object paramObject)
  {
    a(paramObject);
  }
  
  public JsonPrimitive(String paramString)
  {
    a(paramString);
  }
  
  private void a(Object paramObject)
  {
    boolean bool = false;
    if ((paramObject instanceof Character))
    {
      b = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    int i;
    if (!(paramObject instanceof Number))
    {
      if (!(paramObject instanceof String)) {
        break label59;
      }
      i = 1;
    }
    for (;;)
    {
      if (i != 0) {
        bool = true;
      }
      .Gson.Preconditions.checkArgument(bool);
      b = paramObject;
      return;
      label59:
      Class localClass = paramObject.getClass();
      Class[] arrayOfClass = a;
      int j = arrayOfClass.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label105;
        }
        if (arrayOfClass[i].isAssignableFrom(localClass))
        {
          i = 1;
          break;
        }
        i += 1;
      }
      label105:
      i = 0;
    }
  }
  
  private static boolean a(JsonPrimitive paramJsonPrimitive)
  {
    if ((b instanceof Number))
    {
      paramJsonPrimitive = (Number)b;
      return ((paramJsonPrimitive instanceof BigInteger)) || ((paramJsonPrimitive instanceof Long)) || ((paramJsonPrimitive instanceof Integer)) || ((paramJsonPrimitive instanceof Short)) || ((paramJsonPrimitive instanceof Byte));
    }
    return false;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    double d1;
    double d2;
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (JsonPrimitive)paramObject;
          if (b != null) {
            break;
          }
        } while (b == null);
        return false;
        if ((!a(this)) || (!a((JsonPrimitive)paramObject))) {
          break;
        }
      } while (getAsNumber().longValue() == ((JsonPrimitive)paramObject).getAsNumber().longValue());
      return false;
      if ((!(b instanceof Number)) || (!(b instanceof Number))) {
        break;
      }
      d1 = getAsNumber().doubleValue();
      d2 = ((JsonPrimitive)paramObject).getAsNumber().doubleValue();
    } while ((d1 == d2) || ((Double.isNaN(d1)) && (Double.isNaN(d2))));
    return false;
    return b.equals(b);
  }
  
  public final BigDecimal getAsBigDecimal()
  {
    if ((b instanceof BigDecimal)) {
      return (BigDecimal)b;
    }
    return new BigDecimal(b.toString());
  }
  
  public final BigInteger getAsBigInteger()
  {
    if ((b instanceof BigInteger)) {
      return (BigInteger)b;
    }
    return new BigInteger(b.toString());
  }
  
  public final boolean getAsBoolean()
  {
    if (isBoolean()) {
      return ((Boolean)b).booleanValue();
    }
    return Boolean.parseBoolean(getAsString());
  }
  
  public final byte getAsByte()
  {
    if (isNumber()) {
      return getAsNumber().byteValue();
    }
    return Byte.parseByte(getAsString());
  }
  
  public final char getAsCharacter()
  {
    return getAsString().charAt(0);
  }
  
  public final double getAsDouble()
  {
    if (isNumber()) {
      return getAsNumber().doubleValue();
    }
    return Double.parseDouble(getAsString());
  }
  
  public final float getAsFloat()
  {
    if (isNumber()) {
      return getAsNumber().floatValue();
    }
    return Float.parseFloat(getAsString());
  }
  
  public final int getAsInt()
  {
    if (isNumber()) {
      return getAsNumber().intValue();
    }
    return Integer.parseInt(getAsString());
  }
  
  public final long getAsLong()
  {
    if (isNumber()) {
      return getAsNumber().longValue();
    }
    return Long.parseLong(getAsString());
  }
  
  public final Number getAsNumber()
  {
    if ((b instanceof String)) {
      return new LazilyParsedNumber((String)b);
    }
    return (Number)b;
  }
  
  public final short getAsShort()
  {
    if (isNumber()) {
      return getAsNumber().shortValue();
    }
    return Short.parseShort(getAsString());
  }
  
  public final String getAsString()
  {
    if (isNumber()) {
      return getAsNumber().toString();
    }
    if (isBoolean()) {
      return ((Boolean)b).toString();
    }
    return (String)b;
  }
  
  public final int hashCode()
  {
    if (b == null) {
      return 31;
    }
    long l;
    if (a(this))
    {
      l = getAsNumber().longValue();
      return (int)(l ^ l >>> 32);
    }
    if ((b instanceof Number))
    {
      l = Double.doubleToLongBits(getAsNumber().doubleValue());
      return (int)(l ^ l >>> 32);
    }
    return b.hashCode();
  }
  
  public final boolean isBoolean()
  {
    return b instanceof Boolean;
  }
  
  public final boolean isNumber()
  {
    return b instanceof Number;
  }
  
  public final boolean isString()
  {
    return b instanceof String;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.JsonPrimitive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */