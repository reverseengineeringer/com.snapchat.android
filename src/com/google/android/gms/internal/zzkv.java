package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class zzkv<K, V>
{
  private int size;
  private final LinkedHashMap<K, V> zzQA;
  private int zzQB;
  private int zzQC;
  private int zzQD;
  private int zzQE;
  private int zzQF;
  private int zzQG;
  
  public zzkv(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    zzQB = paramInt;
    zzQA = new LinkedHashMap(0, 0.75F, true);
  }
  
  private int zzc(K paramK, V paramV)
  {
    int i = sizeOf(paramK, paramV);
    if (i < 0) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return i;
  }
  
  protected V create(K paramK)
  {
    return null;
  }
  
  public void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final void evictAll()
  {
    trimToSize(-1);
  }
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    Object localObject1;
    try
    {
      localObject1 = zzQA.get(paramK);
      if (localObject1 != null)
      {
        zzQF += 1;
        return (V)localObject1;
      }
      zzQG += 1;
      localObject1 = create(paramK);
      if (localObject1 == null) {
        return null;
      }
    }
    finally {}
    try
    {
      zzQD += 1;
      Object localObject2 = zzQA.put(paramK, localObject1);
      if (localObject2 != null) {
        zzQA.put(paramK, localObject2);
      }
      for (;;)
      {
        if (localObject2 == null) {
          break;
        }
        entryRemoved(false, paramK, localObject1, localObject2);
        return (V)localObject2;
        size += zzc(paramK, localObject1);
      }
      trimToSize(zzQB);
    }
    finally {}
    return (V)localObject1;
  }
  
  public final V put(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      zzQC += 1;
      size += zzc(paramK, paramV);
      Object localObject = zzQA.put(paramK, paramV);
      if (localObject != null) {
        size -= zzc(paramK, localObject);
      }
      if (localObject != null) {
        entryRemoved(false, paramK, localObject, paramV);
      }
      trimToSize(zzQB);
      return (V)localObject;
    }
    finally {}
  }
  
  public final int size()
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
  
  public int sizeOf(K paramK, V paramV)
  {
    return 1;
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = zzQF + zzQG;
      if (j != 0) {
        i = zzQF * 100 / j;
      }
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(zzQB), Integer.valueOf(zzQF), Integer.valueOf(zzQG), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
  
  public void trimToSize(int paramInt)
  {
    Object localObject3;
    Object localObject2;
    try
    {
      if ((size < 0) || ((zzQA.isEmpty()) && (size != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((size <= paramInt) || (zzQA.isEmpty())) {
        return;
      }
      localObject3 = (Map.Entry)zzQA.entrySet().iterator().next();
      localObject2 = ((Map.Entry)localObject3).getKey();
      localObject3 = ((Map.Entry)localObject3).getValue();
      zzQA.remove(localObject2);
      size -= zzc(localObject2, localObject3);
      zzQE += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */