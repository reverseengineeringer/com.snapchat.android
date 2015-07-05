package org.apache.commons.lang3.concurrent;

public abstract class LazyInitializer<T>
  implements ConcurrentInitializer<T>
{
  private volatile T object;
  
  public T get()
  {
    Object localObject1 = object;
    if (localObject1 == null) {
      try
      {
        Object localObject2 = object;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = initialize();
          object = localObject1;
        }
        return (T)localObject1;
      }
      finally {}
    }
    return ?;
  }
  
  protected abstract T initialize();
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.LazyInitializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */