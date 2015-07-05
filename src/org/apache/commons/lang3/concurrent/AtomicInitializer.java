package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

public abstract class AtomicInitializer<T>
  implements ConcurrentInitializer<T>
{
  private final AtomicReference<T> reference = new AtomicReference();
  
  public T get()
  {
    Object localObject2 = reference.get();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = initialize();
      localObject1 = localObject2;
      if (!reference.compareAndSet(null, localObject2)) {
        localObject1 = reference.get();
      }
    }
    return (T)localObject1;
  }
  
  protected abstract T initialize();
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.AtomicInitializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */