package android.support.v4.util;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LruCache<K, V>
{
  private int createCount;
  private int evictionCount;
  private int hitCount;
  private final LinkedHashMap<K, V> map;
  private int maxSize;
  private int missCount;
  private int putCount;
  private int size;
  
  public LruCache(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    maxSize = paramInt;
    map = new LinkedHashMap(0, 0.75F, true);
  }
  
  private static V create$7713a341()
  {
    return null;
  }
  
  private int createCount()
  {
    try
    {
      int i = createCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void evictAll()
  {
    trimToSize(-1);
  }
  
  private int evictionCount()
  {
    try
    {
      int i = evictionCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private int hitCount()
  {
    try
    {
      int i = hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private int maxSize()
  {
    try
    {
      int i = maxSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private int missCount()
  {
    try
    {
      int i = missCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private int putCount()
  {
    try
    {
      int i = putCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void resize(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    try
    {
      maxSize = paramInt;
      trimToSize(paramInt);
      return;
    }
    finally {}
  }
  
  private int safeSizeOf(K paramK, V paramV)
  {
    int i = sizeOf$2838e5a0(paramV);
    if (i < 0) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return i;
  }
  
  private int size()
  {
    try
    {
      int i = size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void entryRemoved$7ef8fcad(boolean paramBoolean, V paramV) {}
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      paramK = map.get(paramK);
      if (paramK != null)
      {
        hitCount += 1;
        return paramK;
      }
      missCount += 1;
      return null;
    }
    finally {}
  }
  
  public final V put(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      putCount += 1;
      size += safeSizeOf(paramK, paramV);
      paramV = map.put(paramK, paramV);
      if (paramV != null) {
        size -= safeSizeOf(paramK, paramV);
      }
      if (paramV != null) {
        entryRemoved$7ef8fcad(false, paramV);
      }
      trimToSize(maxSize);
      return paramV;
    }
    finally {}
  }
  
  public final V remove(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      Object localObject = map.remove(paramK);
      if (localObject != null) {
        size -= safeSizeOf(paramK, localObject);
      }
      if (localObject != null) {
        entryRemoved$7ef8fcad(false, localObject);
      }
      return (V)localObject;
    }
    finally {}
  }
  
  public int sizeOf$2838e5a0(V paramV)
  {
    return 1;
  }
  
  public final Map<K, V> snapshot()
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(map);
      return localLinkedHashMap;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = hitCount + missCount;
      if (j != 0) {
        i = hitCount * 100 / j;
      }
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(maxSize), Integer.valueOf(hitCount), Integer.valueOf(missCount), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
  
  public final void trimToSize(int paramInt)
  {
    Object localObject3;
    try
    {
      if ((size < 0) || ((map.isEmpty()) && (size != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((size <= paramInt) || (map.isEmpty())) {
        return;
      }
      localObject3 = (Map.Entry)map.entrySet().iterator().next();
      Object localObject2 = ((Map.Entry)localObject3).getKey();
      localObject3 = ((Map.Entry)localObject3).getValue();
      map.remove(localObject2);
      size -= safeSizeOf(localObject2, localObject3);
      evictionCount += 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.LruCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */