package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

public abstract class AtomicSafeInitializer<T>
  implements ConcurrentInitializer<T>
{
  private final AtomicReference<AtomicSafeInitializer<T>> factory = new AtomicReference();
  private final AtomicReference<T> reference = new AtomicReference();
  
  public final T get()
  {
    Object localObject;
    for (;;)
    {
      localObject = reference.get();
      if (localObject != null) {
        break;
      }
      if (factory.compareAndSet(null, this)) {
        reference.set(initialize());
      }
    }
    return (T)localObject;
  }
  
  protected abstract T initialize();
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.AtomicSafeInitializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */