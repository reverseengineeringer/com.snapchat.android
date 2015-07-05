package com.google.gson.internal;

import java.lang.reflect.Type;

final class ConstructorConstructor$4
  implements ObjectConstructor<T>
{
  private final UnsafeAllocator d = UnsafeAllocator.create();
  
  ConstructorConstructor$4(ConstructorConstructor paramConstructorConstructor, Class paramClass, Type paramType) {}
  
  public final T construct()
  {
    try
    {
      Object localObject = d.newInstance(a);
      return (T)localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Unable to invoke no-args constructor for " + b + ". Register an InstanceCreator with Gson for this type may fix this problem.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */