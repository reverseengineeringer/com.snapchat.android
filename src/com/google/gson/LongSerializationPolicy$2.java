package com.google.gson;

 enum LongSerializationPolicy$2
{
  LongSerializationPolicy$2()
  {
    super(paramString, 1, (byte)0);
  }
  
  public final JsonElement serialize(Long paramLong)
  {
    return new JsonPrimitive(String.valueOf(paramLong));
  }
}

/* Location:
 * Qualified Name:     com.google.gson.LongSerializationPolicy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */