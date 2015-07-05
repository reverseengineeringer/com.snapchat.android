package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;

class zzl<K, V>
{
  final zza<K, V> zzaxu = new zza()
  {
    public int sizeOf(K paramAnonymousK, V paramAnonymousV)
    {
      return 1;
    }
  };
  
  public zzk<K, V> zza(int paramInt, zza<K, V> paramzza)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (zzsF() < 12) {
      return new zzcv(paramInt, paramzza);
    }
    return new zzaz(paramInt, paramzza);
  }
  
  int zzsF()
  {
    return Build.VERSION.SDK_INT;
  }
  
  public static abstract interface zza<K, V>
  {
    public abstract int sizeOf(K paramK, V paramV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */