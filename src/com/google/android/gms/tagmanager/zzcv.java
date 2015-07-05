package com.google.android.gms.tagmanager;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class zzcv<K, V>
  implements zzk<K, V>
{
  private final Map<K, V> zzaAI = new HashMap();
  private final int zzaAJ;
  private final zzl.zza<K, V> zzaAK;
  private int zzaAL;
  
  zzcv(int paramInt, zzl.zza<K, V> paramzza)
  {
    zzaAJ = paramInt;
    zzaAK = paramzza;
  }
  
  public V get(K paramK)
  {
    try
    {
      paramK = zzaAI.get(paramK);
      return paramK;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
  
  public void zze(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      try
      {
        throw new NullPointerException("key == null || value == null");
      }
      finally {}
    }
    zzaAL += zzaAK.sizeOf(paramK, paramV);
    if (zzaAL > zzaAJ)
    {
      Iterator localIterator = zzaAI.entrySet().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        zzaAL -= zzaAK.sizeOf(localEntry.getKey(), localEntry.getValue());
        localIterator.remove();
      } while (zzaAL > zzaAJ);
    }
    zzaAI.put(paramK, paramV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */