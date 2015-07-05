package com.google.android.gms.tagmanager;

import android.util.LruCache;

class zzaz<K, V>
  implements zzk<K, V>
{
  private LruCache<K, V> zzazc;
  
  zzaz(int paramInt, final zzl.zza<K, V> paramzza)
  {
    zzazc = new LruCache(paramInt)
    {
      protected int sizeOf(K paramAnonymousK, V paramAnonymousV)
      {
        return paramzza.sizeOf(paramAnonymousK, paramAnonymousV);
      }
    };
  }
  
  public V get(K paramK)
  {
    return (V)zzazc.get(paramK);
  }
  
  public void zze(K paramK, V paramV)
  {
    zzazc.put(paramK, paramV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzaz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */