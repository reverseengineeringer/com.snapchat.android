package android.support.v4.util;

public final class Pools
{
  public static abstract interface Pool<T>
  {
    public abstract T acquire();
    
    public abstract boolean release(T paramT);
  }
  
  public static class SimplePool<T>
    implements Pools.Pool<T>
  {
    private final Object[] mPool;
    private int mPoolSize;
    
    public SimplePool(int paramInt)
    {
      if (paramInt <= 0) {
        throw new IllegalArgumentException("The max pool size must be > 0");
      }
      mPool = new Object[paramInt];
    }
    
    private boolean isInPool(T paramT)
    {
      boolean bool2 = false;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < mPoolSize)
        {
          if (mPool[i] == paramT) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
    }
    
    public T acquire()
    {
      if (mPoolSize > 0)
      {
        int i = mPoolSize - 1;
        Object localObject = mPool[i];
        mPool[i] = null;
        mPoolSize -= 1;
        return (T)localObject;
      }
      return null;
    }
    
    public boolean release(T paramT)
    {
      boolean bool = false;
      int i = 0;
      if (i < mPoolSize) {
        if (mPool[i] != paramT) {}
      }
      for (i = 1;; i = 0)
      {
        if (i == 0) {
          break label50;
        }
        throw new IllegalStateException("Already in the pool!");
        i += 1;
        break;
      }
      label50:
      if (mPoolSize < mPool.length)
      {
        mPool[mPoolSize] = paramT;
        mPoolSize += 1;
        bool = true;
      }
      return bool;
    }
  }
  
  public static final class SynchronizedPool<T>
    extends Pools.SimplePool<T>
  {
    private final Object mLock = new Object();
    
    private SynchronizedPool(int paramInt)
    {
      super();
    }
    
    public final T acquire()
    {
      synchronized (mLock)
      {
        Object localObject2 = super.acquire();
        return (T)localObject2;
      }
    }
    
    public final boolean release(T paramT)
    {
      synchronized (mLock)
      {
        boolean bool = super.release(paramT);
        return bool;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.Pools
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */