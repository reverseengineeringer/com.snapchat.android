package com.google.android.gms.internal;

import android.os.Bundle;

final class zzbx$2
  extends zzbx<Integer>
{
  zzbx$2(String paramString, Integer paramInteger)
  {
    super(paramString, paramInteger, null);
  }
  
  public final zzki<Integer> zzbZ()
  {
    return zzki.zza(getKey(), (Integer)zzbY());
  }
  
  public final Integer zzc(Bundle paramBundle)
  {
    return Integer.valueOf(paramBundle.getInt(getKey(), ((Integer)zzbY()).intValue()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */