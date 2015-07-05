package com.google.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

final class ConstructorConstructor$6
  implements ObjectConstructor<T>
{
  ConstructorConstructor$6(ConstructorConstructor paramConstructorConstructor, Constructor paramConstructor) {}
  
  public final T construct()
  {
    try
    {
      Object localObject = a.newInstance(null);
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Failed to invoke " + a + " with no args", localInstantiationException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Failed to invoke " + a + " with no args", localInvocationTargetException.getTargetException());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */