package com.google.gson.internal;

import com.google.gson.JsonIOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

final class ConstructorConstructor$8
  implements ObjectConstructor<T>
{
  ConstructorConstructor$8(ConstructorConstructor paramConstructorConstructor, Type paramType) {}
  
  public final T construct()
  {
    if ((a instanceof ParameterizedType))
    {
      Type localType = ((ParameterizedType)a).getActualTypeArguments()[0];
      if ((localType instanceof Class)) {
        return EnumSet.noneOf((Class)localType);
      }
      throw new JsonIOException("Invalid EnumSet type: " + a.toString());
    }
    throw new JsonIOException("Invalid EnumSet type: " + a.toString());
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */