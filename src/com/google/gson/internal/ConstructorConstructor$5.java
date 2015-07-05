package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import java.lang.reflect.Type;

final class ConstructorConstructor$5
  implements ObjectConstructor<T>
{
  ConstructorConstructor$5(ConstructorConstructor paramConstructorConstructor, InstanceCreator paramInstanceCreator, Type paramType) {}
  
  public final T construct()
  {
    return (T)a.createInstance(b);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */